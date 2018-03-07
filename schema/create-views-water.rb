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
		User_defined_Length
		Frictional_Coefficient
		Minor_Loss
		Pipe_Status
		Multimedia
		Optimization_Group
		Cost_Function
		Bulk_Reaction_Coefficient
		Wall_Reaction_Coefficient
		Initial_Simulation_Status
		FromID
		ToID
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
		Average_Resulting_Quality
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
		Pump_Flow1
		Pump_Head1
		Pump_Flow2
		Pump_Head2
		Pump_Flow3
		Pump_Head3
		Pump_Curve_No
		Relative_Pump_Speed
		Multimedia
		Efficiency
		Percentage_Time_Running1
		Percentage_Time_Running2
		Percentage_Time_Running3
		Percentage_Time_Running4
		Percentage_Time_Running5
		Initial_Simulation_Speed
		Schedule_Pattern_No
		Efficiency_Curve_No
		Energy_Price
		Price_Pattern_No
		ID
		FromID
		ToID
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
		Resulting_Power
		From_Elevation
		To_Elevation
		From_EGL
		To_EGL
		From_Head
		To_Head
		Pump_Curve_a_param
		Pump_Curve_b_param
		Pump_Curve_c_param
		From_Static_EGL
		To_Static_EGL
		From_Static_Head
		To_Static_Head
		Average_Resulting_Quality
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
		Setting
		Diameter
		Minor_Loss
		Valve_Status
		Multimedia
		Initial_Simulation_Status
		ID
		FromID
		ToID
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
		Average_Resulting_Quality
		Average_Elevation
		Average_EGL
		Average_Head
		Average_Static_EGL
		Average_Static_Head
  	)
}

water_junction = {
	:WaterJunction => %w(
		Locality
		ID
		Node_Type
		Node_Code
		Elevation
		Output
		Emitter_Coefficient
		Static_EGL
		Static_Head
		SC1_AADD
		SC2_AADD_UAW
		SC3_Theor_AADD
		SC4_Theor_AADD_Vac
		SC5_Theor_AADD_Zoning
		Demand_Zone
		Multimedia
		Demand_for_Case1
		Minimum_Head_for_Case1
		Demand_for_Case2
		Minimum_Head_for_Case2
		Demand_for_Case3
		Minimum_Head_for_Case3
		Demand_for_Case4
		Minimum_Head_for_Case4
		Demand_for_Case5
		Minimum_Head_for_Case5
		Demand_Category_1
		Percentage_Of_Output1
		Demand_Category_2
		Percentage_Of_Output2
		Demand_Category_3
		Percentage_Of_Output3
		Demand_Category_4
		Percentage_Of_Output4
		Demand_Category_5
		Percentage_Of_Output5
		Initial_Quality
		Geometry
		MetaID
	),
	:WaterJunctionMemo => %w(
		Peak_Factor
		PF_Category
		Adjust_Factor
		Year
		Year_Integrity
		Special
		System_Type
		System
		Name
		Sub_Name
		Comment
		Region
		Future_Zone
		Future_System_Type
		Future_System
		Future_Static_EGL
		Future_Static_Head
		Future_Develop
		Informal_Develop
		Develop_Weight
		AM_Make
		AM_Type
		AM_ID_No
		AM_Utilization
		AM_Utilization_Integ
		AM_Base_Year
		AM_Replace_Value
		Node_Integrity
		Drawing_No
	),
	:WaterJunctionResult => %w(
		Demand_Scenario
		Emitter_Flow
		EGL
		Head
		Pressure
		Resulting_Quality
	)
}

water_source = {
	:WaterSource => %w(
		Locality
		Node_Type
		Node_Code
		Ground_Elevation
		Water_Level
		Static_EGL
		Static_Head
		Multimedia
		Average_Level
		Emergency_Volume
		Existing_Volume
		Cost_Function
		Bottom_Elevation
		Minimum_Level
		Maximum_Level
		Initial_Level
		Surface_Area
		Minimum_Volume
		Curve_Time_Pattern_No
		Mixing_Model
		Mixing_Fraction
		Bulk_Reaction_Coefficient
		Initial_Quality
		ID
		Geometry
		MetaID
	),
	:WaterSourceMemo => %w(
		Material
		Volume
		TWL
		BWL
		Year
		Year_Integrity
		Inlet_Type
		System_Type
		System
		Name
		Sub_Name
		Comment
		Region
		Yield
		Planning_Alloc
		Zone_AADD
		Future_Zone_AADD
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
		Volume_Integrity
		Drawing_No
	),
	:WaterSourceResult => %w(
		EGL
		Head
		Pressure
		In_Flow
		Resulting_Quality
	)
}

options = {:has_geometry => true, :only_drop_views => (ARGV[0] == "-d")}
print(ViewBuilder.build_view_statement("WaterPipeCombined", water_pipe, scenarios, options))
print(ViewBuilder.build_view_statement("WaterPumpCombined", water_pump, scenarios, options))
print(ViewBuilder.build_view_statement("WaterValveCombined", water_valve, scenarios, options))
print(ViewBuilder.build_view_statement("WaterJunctionCombined", water_junction, scenarios, options))
print(ViewBuilder.build_view_statement("WaterSourceCombined", water_source, scenarios, options))
