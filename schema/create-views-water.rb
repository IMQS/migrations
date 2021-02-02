require_relative 'view-builder'

# 2015-02-16 : Add parameter "-d" to drop the views. We didnt bother to update this fields because GLS changed their field names
# How to build up these lists?
# Pull the data out of pgadmin. Using SublimeText it doesn't take long to reformat
# the SQL statements from pgadmin into this form.
# One can execute these scripts as follows:

# set PGPASSWORD=<password>
# create-views-water.rb | "c:\Program Files\PostgreSQL\9.3\bin\psql.exe" -d main -U imqs -1 -n

scenarios = [["06", "Future"], ["01", "Abandoned"], ["02", "AsBuilt"], ["03", "Construction"], ["04", "Existing_Operational"], ["05", "Existing_Theoretical"]]

water_pipe = {
	:WaterPipe => %w(
		ID
		Locality
		Link_Type
		Link_Code
		From_Code
		To_Code
		Diameter
		User_Defined_Length
		Friction_Coefficient
		Minor_Loss_Coefficient
		Pipe_Status
		Multimedia
		Optimization_Group
		Cost_Function
		Tsim_Bulk_Rx_Coefficient
		Tsim_Wall_Rx_Coefficient
		Tsim_Initial_Status
		From_ID
		To_ID
		Geometry
		MetaID
	),
	:WaterPipeMemo => %w(
		Material
		Pressure_Rating
		Nominal_Diameter
		Inside_Diameter
		Year
		Year_Integrity
		Special
		System_Type
		System
		Name
		Sub_Name
		Comment
		Region
		MP_Item_Type
		MP_Item_No
		MP_Project_No
		MP_Project_Descr
		MP_Year
		MP_Comment
		MP_Cost_Detail
		MP_Cost_FN
		MP_Extra_Cost_Fact
		Future_System_Type
		Future_System
		AM_Make
		AM_Type
		AM_ID_No
		AM_Utilization
		AM_Utilization_Integ
		AM_Base_Year
		AM_Replace_Value
		Locality_Integrity
		Material_Integrity
		Pressure_Integrity
		Diameter_Integrity
		Drawing_No
	),
	:WaterPipeResult => %w(
		Balanced_Status
		Flow
		Velocity
		Headloss
		Energy_Gradient
		From_Elevation
		To_Elevation
		From_EGL
		To_EGL
		From_Head
		To_Head
		From_Static_EGL
		To_Static_EGL
		From_Static_Head
		To_Static_Head
		Average_Quality
		Average_Elevation
		Average_EGL
		Average_Head
		Average_Static_EGL
		Average_Static_Head
	)
}


water_pump = {
	:WaterPump => %w(
		Locality
		Link_Type
		Link_Code
		From_Code
		To_Code
		Flow_Point1
		Head_Point1
		Flow_Point2
		Head_Point2
		Flow_Point3
		Head_Point3
		Curve_No
		Relative_Speed
		Multimedia
		Opt_Efficiency
		Opt_Runtime_Percent_Case1
		Opt_Runtime_Percent_Case2
		Opt_Runtime_Percent_Case3
		Opt_Runtime_Percent_Case4
		Opt_Runtime_Percent_Case5
		Tsim_Initial_Speed
		Tsim_Schedule_Pattern_No
		Tsim_Efficiency_Curve_No
		Tsim_Energy_Price
		Tsim_Energy_Price_Pattern_No
		ID
		From_ID
		To_ID
		Geometry
		MetaID
  	),
	:WaterPumpMemo => %w(
		Impeller
		Speed
		Power
		Static_Head
		PS_Oper_Standby
		Pump_Flow
		Pump_Head
		PS_Total_Flow
		PS_Total_Head
		Year
		Year_Integrity
		System_Type
		System
		Name
		Sub_Name
		Comment
		Region
		MP_Item_Type
		MP_Item_No
		MP_Project_No
		MP_Project_Descr
		MP_Year
		MP_Comment
		MP_Cost_Detail
		MP_Cost_FN
		MP_Extra_Cost_Fact
		MP_Pump_Flow
		MP_Pump_Head
		MP_PS_Total_Flow
		MP_PS_Total_Head
		Future_System_Type
		Future_System
		AM_Make
		AM_Type
		AM_ID_No
		AM_Utilization
		AM_Utilization_Integ
		AM_Base_Year
		AM_Replace_Value
		Pump_Integrity
		Flow_Integrity
		Drawing_No
  	),
	:WaterPumpResult => %w(
		Balanced_Status
		Flow
		Head
		From_Elevation
		To_Elevation
		From_EGL
		To_EGL
		From_Head
		To_Head
		Pump_Parabola_a
		Pump_Parabola_b
		Pump_Parabola_c
		From_Static_EGL
		To_Static_EGL
		From_Static_Head
		To_Static_Head
		Average_Elevation
		Average_EGL
		Average_Head
		Average_Static_EGL
		Average_Static_Head
	)
}

water_valve = {
	:WaterValve => %w(
		Locality
		Link_Type
		Link_Code
		From_Code
		To_Code
		Valve_Setting
		Diameter
		Minor_Loss_Coefficient
		Valve_Status
		Multimedia
		Tsim_Initial_Setting
		ID
		From_ID
		To_ID
		Geometry
		MetaID
	),
	:WaterValveMemo => %w(
		Material
		Pressure_Rating
		Setting_for_90m
		EGL_for_90m
		Year
		Year_Integrity
		Special
		System_Type
		System
		Name
		Sub_Name
		Comment
		Region
		MP_Item_Type
		MP_Item_No
		MP_Project_No
		MP_Project_Descr
		MP_Year
		MP_Comment
		MP_Cost_Detail
		MP_Cost_FN
		MP_Extra_Cost_Fact
		Future_System_Type
		Future_System
		AM_Make
		AM_Type
		AM_ID_No
		AM_Utilization
		AM_Utilization_Integ
		AM_Base_Year
		AM_Replace_Value
		Locality_Integrity
		Material_Integrity
		Pressure_Integrity
		Diameter_Integrity
		Drawing_No
	),
	:WaterValveResult => %w(
		Balanced_Status
		Flow
		Velocity
		Headloss
		From_Elevation
		To_Elevation
		From_EGL
		To_EGL
		From_Head
		To_Head
		From_Static_EGL
		To_Static_EGL
		From_Static_Head
		To_Static_Head
		Average_Quality
		Average_Elevation
		Average_EGL
		Average_Head
		Average_Static_EGL
		Average_Static_Head
  	)
}

options = {:has_geometry => true, :only_drop_views => (ARGV[0] == "-d")}
print(ViewBuilder.build_view_statement("WaterPipeCombined", water_pipe, scenarios, options))
print(ViewBuilder.build_view_statement("WaterPumpCombined", water_pump, scenarios, options))
print(ViewBuilder.build_view_statement("WaterValveCombined", water_valve, scenarios, options))
