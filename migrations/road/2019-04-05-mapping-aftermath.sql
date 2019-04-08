CREATE TABLE "recommended_maintenance" (
 "road_id" BIGINT,
 "locality" VARCHAR,
 "rem_surface_lif" BIGINT,
 "rem_struc_li" BIGINT,
 "rehab_index" BIGINT,
 "rehab_category" BIGINT,
 "rehab_text" VARCHAR,
 "maintenance_index" BIGINT,
 "maintenance_category" BIGINT,
 "maintenance_text" VARCHAR,
 "min_maintenance_ty" BIGINT,
 "rec_maintenance_ty" BIGINT,
 "min_maintenance_te" VARCHAR,
 "rec_maintenance_te" VARCHAR,
 "min_maintenance_co" BIGINT,
 "rec_maintenance_co" BIGINT,
 "rec_maintenance_c0" BIGINT,
 "min_rehab_ty" BIGINT,
 "rec_rehab_ty" BIGINT,
 "min_rehab_te" VARCHAR,
 "rec_rehab_te" VARCHAR,
 "min_rehab_co" BIGINT,
 "rec_rehab_co" BIGINT,
 "rebuild_tex" VARCHAR,
 "cost_seal_ye" BIGINT,
 "cost_seal_y0" BIGINT,
 "rebuild_ind" BIGINT,
 "rec_surface_type" BIGINT,
 "reseal_inde" BIGINT,
 "reseal_cate" BIGINT,
 "min_surface_type" BIGINT,
 "min_surface_cos" BIGINT,
 "maintenance_surface_type" VARCHAR,
 "maintenance_area" VARCHAR,
 "maintenance_completed" VARCHAR,
 "maintenance_year_completed" VARCHAR,
 "treatment" VARCHAR,
 "rate" REAL,
 "amount" REAL,
 "priority" VARCHAR,
 "cost_code_id" BIGINT,
 "financial_data_id" BIGINT,
 "acquisition_date" BIGINT,
 "crc_adjustment_factor" BIGINT,
 "crc" DOUBLE PRECISION,
 "acquisition_cost" VARCHAR,
 "index" BIGINT,
 "insp_year" BIGINT,
 "cond_rating" VARCHAR,
 "drc" DOUBLE PRECISION,
 "surface_cost_code_id" BIGINT,
 "surface_crc" DOUBLE PRECISION,
 "surface_drc" DOUBLE PRECISION,
 "pavement_cost_code_id" BIGINT,
 "pavement_crc" DOUBLE PRECISION,
 "pavement_drc" DOUBLE PRECISION,
 "fmtn_cond_index" BIGINT,
 "fmtn_type" VARCHAR,
 "fmtn_cost_code_id" BIGINT,
 "fmtn_crc" DOUBLE PRECISION,
 "fmtn_drc" DOUBLE PRECISION
);
CREATE UNIQUE INDEX ON "recommended_maintenance" ("road_id");

CREATE TABLE "road_sign" (
 "_id" BIGSERIAL,
 "geometry" geometry(Geometry, 4326),
 "locality" VARCHAR,
 "street" VARCHAR,
 "town" VARCHAR,
 "suburb" VARCHAR,
 "category" VARCHAR,
 "type_1" VARCHAR,
 "type_2" VARCHAR,
 "road_class" VARCHAR,
 "illumination" BOOLEAN,
 "code_description" VARCHAR,
 "sign_code_new" VARCHAR,
 PRIMARY KEY("_id")
);
CREATE INDEX ON "road_sign" USING GIST ("geometry");

CREATE TABLE "road_static" (
 "road_id" BIGINT,
 "locality" VARCHAR,
 "link_id" BIGINT,
 "road_nr" VARCHAR,
 "parent_id" BIGINT,
 "auth_code" VARCHAR,
 "auth_name" VARCHAR,
 "authority_type" VARCHAR,
 "network" VARCHAR,
 "suburb" VARCHAR,
 "ward" VARCHAR,
 "ward_number" BIGINT,
 "town" VARCHAR,
 "extension" VARCHAR,
 "owner" VARCHAR,
 "route" VARCHAR,
 "route_seq" SMALLINT,
 "lane_code" VARCHAR,
 "length_km" DOUBLE PRECISION,
 "start_km" DOUBLE PRECISION,
 "end_km" DOUBLE PRECISION,
 "from_node" VARCHAR,
 "to_node" VARCHAR,
 "from_node_type" VARCHAR,
 "to_node_type" VARCHAR,
 "road_width" DOUBLE PRECISION,
 "long" DOUBLE PRECISION,
 "lat" DOUBLE PRECISION,
 "end_longitude" DOUBLE PRECISION,
 "end_latitude" DOUBLE PRECISION,
 "order_nr" BIGINT,
 "active_ind" VARCHAR,
 "surf_type" VARCHAR,
 "street_name" VARCHAR,
 "feature_id" BIGINT,
 "street_name_lang_code" VARCHAR,
 "number_of_street_names" SMALLINT,
 "street_name_base" VARCHAR,
 "street_type_after" VARCHAR,
 "street_type_attached" BOOLEAN,
 "address_type" "char",
 "left_reference_address" VARCHAR,
 "left_non_reference_address" VARCHAR,
 "left_address_scheme" "char",
 "left_address_format" BOOLEAN,
 "right_reference_address" VARCHAR,
 "right_non_reference_address" VARCHAR,
 "right_address_scheme" "char",
 "right_address_format" BOOLEAN,
 "reference_end_intersection_id" BIGINT,
 "non_reference_end_intersection_id" BIGINT,
 "number_of_shapepoints" BIGINT,
 "functional_class" "char",
 "speed_category" "char",
 "from_reference_speed_limit" BIGINT,
 "toward_reference_speed_limit" BIGINT,
 "to_lanes" SMALLINT,
 "from_lanes" SMALLINT,
 "enhanced_geometry" BOOLEAN,
 "lane_category" "char",
 "divider" "char",
 "direction" VARCHAR,
 "left_area_id" BIGINT,
 "right_area_id" BIGINT,
 "left_postal_code" VARCHAR,
 "right_postal_code" VARCHAR,
 "number_of_left_zones" SMALLINT,
 "number_of_right_zones" SMALLINT,
 "number_of_address_ranges" SMALLINT,
 "access_automobiles" BOOLEAN,
 "access_buses" BOOLEAN,
 "access_taxis" BOOLEAN,
 "access_carpools" BOOLEAN,
 "access_pedestrians" BOOLEAN,
 "access_trucks" BOOLEAN,
 "access_through_traffic" BOOLEAN,
 "access_deliveries" BOOLEAN,
 "access_emergency_vehicles" BOOLEAN,
 "access_motorcycles" BOOLEAN,
 "paved" BOOLEAN,
 "private" BOOLEAN,
 "frontage_road" BOOLEAN,
 "bridge" BOOLEAN,
 "tunnel" BOOLEAN,
 "ramp" BOOLEAN,
 "tollway" BOOLEAN,
 "poi_access_road" BOOLEAN,
 "controlled_access" BOOLEAN,
 "roundabout" BOOLEAN,
 "intersection_internal" BOOLEAN,
 "undefined_traffic_area" BOOLEAN,
 "ferry_type" "char",
 "multiply_digitised" BOOLEAN,
 "maximum_attributes" BOOLEAN,
 "special_traffic_figure" BOOLEAN,
 "indescribable" BOOLEAN,
 "manoeuvre" BOOLEAN,
 "divider_legal" BOOLEAN,
 "in_process_data" BOOLEAN,
 "full_geometry" BOOLEAN,
 "urban" BOOLEAN,
 "name_on_road_sign" BOOLEAN,
 "postal_name" BOOLEAN,
 "stale_name" BOOLEAN,
 "vanity_name" BOOLEAN,
 "junction_name" BOOLEAN,
 "exit_name" BOOLEAN,
 "scenic_route" BOOLEAN,
 "scenic_route_name" BOOLEAN,
 "four_wheel_drive" BOOLEAN,
 "coverage_indicator" VARCHAR,
 "parking_lot_road" BOOLEAN,
 "reversible" BOOLEAN,
 "express_lane" BOOLEAN,
 "carpool_road" BOOLEAN,
 "no_lanes" SMALLINT,
 "transport_verified" BOOLEAN,
 "public_access" BOOLEAN,
 "low_mobility" "char",
 "priority_road" BOOLEAN,
 "speed_limit_source" VARCHAR,
 "expanded_inclusion" "char",
 "transition_area" BOOLEAN,
 "shape_leng" DOUBLE PRECISION,
 "extent" DOUBLE PRECISION,
 "paved_text" VARCHAR,
 "verify_sta" VARCHAR,
 "munic" VARCHAR,
 "district" VARCHAR,
 "province" VARCHAR,
 "status" SMALLINT,
 "road_type" VARCHAR,
 "lane_type" "char",
 "lane_position" SMALLINT,
 "lane_seg_id" VARCHAR,
 "shoulder_width" REAL,
 "cl_offset" REAL,
 "shoulder_type" VARCHAR,
 "terr_class" "char",
 "gradient" "char",
 "block_type" VARCHAR,
 "block_lay" VARCHAR,
 "block_thick" REAL,
 "chamfers" VARCHAR,
 "rdda_id" VARCHAR,
 "auth_rd_id" VARCHAR,
 "sadc_route" VARCHAR,
 "auth_rd_dir" "char",
 "start_desc" VARCHAR,
 "end_desc" VARCHAR,
 "gis_link_id" VARCHAR,
 "segment_id" VARCHAR,
 "no_shoulders" SMALLINT,
 "base_date" TIMESTAMP WITHOUT TIME ZONE,
 "surface_date" TIMESTAMP WITHOUT TIME ZONE,
 "resp_auth" VARCHAR,
 "segment_status" VARCHAR,
 "library_reference" VARCHAR,
 "consultant" VARCHAR,
 "contractor" VARCHAR,
 "contract_number" BIGINT,
 "contract_description" VARCHAR,
 "stop_reference" VARCHAR,
 "exist_stop_fac" VARCHAR,
 "prop_stop_fac" VARCHAR,
 "exist_shelter_type" BIGINT,
 "existing_modules" BIGINT,
 "remarks" VARCHAR,
 "speed_humb_number" BIGINT,
 "trad_auth" VARCHAR,
 "rds_per_ward" BIGINT,
 "cllr_name" VARCHAR,
 "description" VARCHAR,
 "data_source" VARCHAR,
 "criteria_category" VARCHAR,
 "cllr_request" VARCHAR,
 "qualifies" BOOLEAN,
 "population" BIGINT,
 "population_points" BIGINT,
 "total_points" BIGINT,
 "points_km" BIGINT,
 "length_upgraded" BIGINT,
 "action_taken" VARCHAR,
 "month_completed1" VARCHAR,
 "month_completed2" VARCHAR,
 "month_completed3" VARCHAR,
 "mm_media" VARCHAR,
 "new_road_number" VARCHAR,
 "previous_road_number" VARCHAR,
 "completion_date" BIGINT,
 "begin_street" VARCHAR,
 "end_street" VARCHAR,
 "bus_route" VARCHAR,
 "plan_num1" VARCHAR,
 "plan_num2" VARCHAR,
 "plan_num3" VARCHAR,
 "longsection_n_1" VARCHAR,
 "longsection_n_2" VARCHAR,
 "longsection_n_3" VARCHAR,
 "detail_n_1" VARCHAR,
 "detail_n_2" VARCHAR,
 "detail_n_3" VARCHAR,
 "detail_n_4" VARCHAR,
 "detail_n_5" VARCHAR,
 "cross_sect_1" VARCHAR,
 "cross_sect_2" VARCHAR,
 "cross_sect_3" VARCHAR,
 "date_as_built" BIGINT,
 "date_as_built_register" BIGINT,
 "width_carriageway" BIGINT,
 "reserve_width" VARCHAR,
 "wearing_course" VARCHAR,
 "aggregate" VARCHAR,
 "base1_material_code" VARCHAR,
 "base1_layer_thickness" VARCHAR,
 "base2_material_code" VARCHAR,
 "base2_layer_thickness" VARCHAR,
 "subbase_1_material_code" VARCHAR,
 "subbase_1_layer_thickness" VARCHAR,
 "subbase_2_material_code" VARCHAR,
 "subbase_2_layer_thickness" VARCHAR,
 "workfloor" VARCHAR,
 "subbase_stabilization" VARCHAR,
 "selected_subgrade1" VARCHAR,
 "selected_subgrade2" VARCHAR,
 "roadbed" VARCHAR,
 "kerb_type" VARCHAR,
 "kerb_configuration" VARCHAR,
 "kerb_figure" VARCHAR,
 "order" VARCHAR,
 "gis_created_by" VARCHAR,
 "gis_date_created" BIGINT,
 "gis_modified_by" VARCHAR,
 "gis_date_modified" BIGINT,
 "main_arterial" VARCHAR,
 "main_arterial_name" VARCHAR,
 "road_link" VARCHAR,
 "from_link" VARCHAR,
 "to_link" VARCHAR,
 "paved_width" REAL,
 "gen_cond_rating" VARCHAR,
 "surface_area" DOUBLE PRECISION,
 "surface_cond_index" BIGINT,
 "pavement_area" DOUBLE PRECISION,
 "pavement_cond_index" BIGINT,
 "code_name" BIGINT,
 "name" VARCHAR,
 "asset_id" BIGINT,
 "asset_type" BIGINT,
 "asset_type_desc" VARCHAR,
 "component_type_id" BIGINT,
 "component_type" VARCHAR,
 "mp_name" VARCHAR,
 "area" DOUBLE PRECISION,
 "mass" DOUBLE PRECISION,
 "custodian" VARCHAR,
 "gid" BIGINT,
 "one_way" VARCHAR,
 "sidewalk_pe" BIGINT,
 "kerb_pe" BIGINT,
 "lane_width" REAL,
 "mainplaces_code" BIGINT,
 "sidewalk_width" REAL,
 "surface_asset_id" BIGINT,
 "surface_component_id" BIGINT,
 "surface_component_type_id" BIGINT,
 "pavement_asset_id" BIGINT,
 "pavement_component_id" BIGINT,
 "pavement_component_type_id" BIGINT,
 "fmtn_asset_id" BIGINT,
 "fmtn_component_id" BIGINT,
 "fmtn_component_type_id" BIGINT,
 "fmtn_area" DOUBLE PRECISION,
 "prop_shelter_type" VARCHAR,
 "storm_chan" BIGINT,
 "subplace_c" BIGINT,
 "sp_name" BIGINT,
 "sidewalk_type" VARCHAR,
 "link_length" DOUBLE PRECISION,
 "phase" VARCHAR,
 "count_geom" BIGINT,
 "seq_flag" BIGINT
);
CREATE UNIQUE INDEX ON "road_static" ("road_id");

CREATE TABLE "survey" (
 "road_id" BIGINT,
 "locality" VARCHAR,
 "survey_nr" BIGINT,
 "survey_year" BIGINT,
 "measure_date" TIMESTAMP WITHOUT TIME ZONE,
 "survey_km" REAL,
 "start_date" TIMESTAMP WITHOUT TIME ZONE,
 "end_date" TIMESTAMP WITHOUT TIME ZONE,
 "cond_year" BIGINT,
 "surface_cond_index" BIGINT,
 "pavement_cond_index" BIGINT
);
CREATE INDEX ON "survey" ("road_id");

CREATE TABLE "traffic_link_volume" (
 "road_id" BIGINT,
 "locality" VARCHAR,
 "dt_lst_cnt" TIMESTAMP WITHOUT TIME ZONE,
 "aadt_l" INTEGER,
 "aadt_m" INTEGER,
 "aadt_b" INTEGER,
 "aadt_ts" INTEGER,
 "aadt_tm" INTEGER,
 "aadt_tl" INTEGER,
 "aadt" INTEGER,
 "from_node" VARCHAR,
 "to_node" VARCHAR,
 "peak_am" VARCHAR,
 "peak_pm" VARCHAR
);
CREATE UNIQUE INDEX ON "traffic_link_volume" ("road_id");

ALTER TABLE "condition" DROP COLUMN "terr_class";
ALTER TABLE "condition" DROP COLUMN "gradient";
ALTER TABLE "condition" DROP COLUMN "measure_date";
ALTER TABLE "condition" DROP COLUMN "block_type";
ALTER TABLE "condition" DROP COLUMN "block_lay";
ALTER TABLE "condition" DROP COLUMN "block_thick";
ALTER TABLE "condition" DROP COLUMN "chamfers";
ALTER TABLE "condition" DROP COLUMN "surf_type";
ALTER TABLE "condition" DROP COLUMN "survey_km";
ALTER TABLE "condition" DROP COLUMN "pavement_type";
ALTER TABLE "condition" DROP COLUMN "lane_seg_id";
ALTER TABLE "condition" DROP COLUMN "shoulder_width";
ALTER TABLE "condition" DROP COLUMN "cl_offset";
ALTER TABLE "condition" DROP COLUMN "shoulder_type";
ALTER TABLE "condition" DROP COLUMN "direction";
ALTER TABLE "condition" DROP COLUMN "lane_type";
ALTER TABLE "condition" DROP COLUMN "lane_position";
ALTER TABLE "condition" DROP COLUMN "start_date";
ALTER TABLE "condition" DROP COLUMN "end_date";
ALTER TABLE "condition" DROP COLUMN "rdda_id";
ALTER TABLE "condition" DROP COLUMN "auth_rd_id";
ALTER TABLE "condition" DROP COLUMN "sadc_route";
ALTER TABLE "condition" DROP COLUMN "auth_rd_dir";
ALTER TABLE "condition" DROP COLUMN "rcam_class";
ALTER TABLE "condition" DROP COLUMN "start_desc";
ALTER TABLE "condition" DROP COLUMN "end_desc";
ALTER TABLE "condition" DROP COLUMN "gis_link_id";
ALTER TABLE "condition" DROP COLUMN "segment_id";
ALTER TABLE "condition" DROP COLUMN "status";
ALTER TABLE "condition" DROP COLUMN "road_type";
ALTER TABLE "condition" DROP COLUMN "no_lanes";
ALTER TABLE "condition" DROP COLUMN "no_shoulders";
ALTER TABLE "condition" DROP COLUMN "base_date";
ALTER TABLE "condition" DROP COLUMN "surface_date";
ALTER TABLE "condition" DROP COLUMN "district";
ALTER TABLE "condition" DROP COLUMN "munic";
ALTER TABLE "condition" DROP COLUMN "resp_auth";
ALTER TABLE "condition" DROP COLUMN "end_longitude";
ALTER TABLE "condition" DROP COLUMN "end_latitude";
ALTER TABLE "condition" DROP COLUMN "segment_status";
ALTER TABLE "condition" DROP COLUMN "dt_lst_cnt";
ALTER TABLE "condition" DROP COLUMN "aadt_l";
ALTER TABLE "condition" DROP COLUMN "aadt_m";
ALTER TABLE "condition" DROP COLUMN "aadt_b";
ALTER TABLE "condition" DROP COLUMN "aadt_ts";
ALTER TABLE "condition" DROP COLUMN "aadt_tm";
ALTER TABLE "condition" DROP COLUMN "aadt_tl";
ALTER TABLE "condition" DROP COLUMN "aadt";
ALTER TABLE "condition" DROP COLUMN "from_node";
ALTER TABLE "condition" DROP COLUMN "to_node";
ALTER TABLE "condition" DROP COLUMN "from_node_type";
ALTER TABLE "condition" DROP COLUMN "to_node_type";
CREATE INDEX ON "condition" ("vci");
CREATE INDEX ON "condition" ("opc");
CREATE INDEX ON "condition" ("stci");
CREATE INDEX ON "condition" ("mni");
ALTER TABLE "road" ADD COLUMN "data_provider" VARCHAR;
ALTER TABLE "road" ADD COLUMN "rcam_class" VARCHAR;
ALTER TABLE "road" ADD COLUMN "pavement_type" VARCHAR;
ALTER TABLE "road" DROP COLUMN "road_code";
ALTER TABLE "road" DROP COLUMN "auth_code";
ALTER TABLE "road" DROP COLUMN "auth_name";
ALTER TABLE "road" DROP COLUMN "authority_type";
ALTER TABLE "road" DROP COLUMN "network";
ALTER TABLE "road" DROP COLUMN "suburb";
ALTER TABLE "road" DROP COLUMN "ward";
ALTER TABLE "road" DROP COLUMN "route";
ALTER TABLE "road" DROP COLUMN "route_seq";
ALTER TABLE "road" DROP COLUMN "lane_code";
ALTER TABLE "road" DROP COLUMN "start_km";
ALTER TABLE "road" DROP COLUMN "end_km";
ALTER TABLE "road" DROP COLUMN "road_width";
ALTER TABLE "road" DROP COLUMN "owner";
