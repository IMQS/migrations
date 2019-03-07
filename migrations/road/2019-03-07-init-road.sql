CREATE TABLE "condition" (
 "road_id" BIGINT,
 "locality" VARCHAR,
 "terr_class" "char",
 "gradient" "char",
 "measure_date" TIMESTAMP WITHOUT TIME ZONE,
 "block_type" VARCHAR,
 "block_lay" VARCHAR,
 "block_thick" REAL,
 "chamfers" VARCHAR,
 "vci" REAL,
 "rci" REAL,
 "mni" REAL,
 "sci" REAL,
 "stci" REAL,
 "fci" REAL,
 "cci" REAL,
 "spalled_crack_deg" SMALLINT,
 "spalled_crack_ext" SMALLINT,
 "surf_integrity_deg" SMALLINT,
 "surf_integrity_ext" SMALLINT,
 "joint_loss_deg" SMALLINT,
 "joint_loss_ext" SMALLINT,
 "edge_damage_deg" SMALLINT,
 "edge_damage_ext" SMALLINT,
 "rutting_deg" SMALLINT,
 "rutting_ext" SMALLINT,
 "pot_patch_deg" SMALLINT,
 "pot_patc_ext" SMALLINT,
 "undulation_deg" SMALLINT,
 "undulation_ext" SMALLINT,
 "riding_qual_deg" SMALLINT,
 "rqual_prob_patch" SMALLINT,
 "rqual_prob_loose" BOOLEAN,
 "rqual_prob_undul" BOOLEAN,
 "skid_resistance_deg" SMALLINT,
 "drainage_surf" VARCHAR,
 "drain_prob_profile" BOOLEAN,
 "drain_prob_rut" BOOLEAN,
 "drain_prob_should" BOOLEAN,
 "drain_prob_side" BOOLEAN,
 "drain_prob_fail" BOOLEAN,
 "unpaved_shoulder" "char",
 "unpaved_prob_eroded" BOOLEAN,
 "unpaved_prob_wearing" BOOLEAN,
 "unpaved_prob_inclined" BOOLEAN,
 "unpaved_prob_ogrown" BOOLEAN,
 "unpaved_prob_2high" BOOLEAN,
 "unpaved_prob_2narrow" BOOLEAN,
 "opc" SMALLINT,
 "other_prob_trees" BOOLEAN,
 "other_prob_moles" BOOLEAN,
 "other_prob_damage" BOOLEAN,
 "comments" VARCHAR,
 "avg_iri_l" REAL,
 "avg_iri_r" REAL,
 "iri_l_stdv" REAL,
 "iri_r_stdv" REAL,
 "avg_hri" REAL,
 "hri_stdv" REAL,
 "avg_rut_l" REAL,
 "avg_rut_r" REAL,
 "rut_l_stdv" REAL,
 "rut_r_stdv" REAL,
 "avg_mpd_l" REAL,
 "avg_mpd_c" REAL,
 "avg_mpd_r" REAL,
 "mpd_stdv_l" REAL,
 "mpd_stdv_c" REAL,
 "mpd_stdv_r" REAL,
 "start_longitude" DOUBLE PRECISION,
 "start_latitude" DOUBLE PRECISION,
 "code" VARCHAR,
 "surf_type" VARCHAR,
 "random_crack_deg" SMALLINT,
 "random_crack_ext" SMALLINT,
 "transverse_crack_deg" SMALLINT,
 "transverse_crack_ext" SMALLINT,
 "long_crack_deg" SMALLINT,
 "long_crack_ext" SMALLINT,
 "corner_crack_deg" SMALLINT,
 "corner_crack_ext" SMALLINT,
 "cluster_crack_deg" SMALLINT,
 "cluster_crack_ext" SMALLINT,
 "pumping_deg" SMALLINT,
 "pumping_ext" SMALLINT,
 "joint_seal_deg" SMALLINT,
 "joint_seal_ext" SMALLINT,
 "fault_deg" SMALLINT,
 "faul_ext" SMALLINT,
 "punch_deg" SMALLINT,
 "punch_ext" SMALLINT,
 "shattered_deg" SMALLINT,
 "shattered_ext" SMALLINT,
 "patching_deg" SMALLINT,
 "patching_ext" SMALLINT,
 "texture" VARCHAR,
 "rqual_prob_punch" BOOLEAN,
 "rqual_prob_shattered" BOOLEAN,
 "rqual_prob_fault" BOOLEAN,
 "other_prob_crushing" BOOLEAN,
 "other_prob_blowup" BOOLEAN,
 "other_prob_reaction" BOOLEAN,
 "survey_km" REAL,
 "temp_air" REAL,
 "temp_surface" REAL,
 "peak_load" REAL,
 "drop_num" SMALLINT,
 "def_0" SMALLINT,
 "def_200" SMALLINT,
 "def_300" SMALLINT,
 "def_400" SMALLINT,
 "def_450" SMALLINT,
 "def_500" SMALLINT,
 "def_600" SMALLINT,
 "def_750" SMALLINT,
 "def_900" SMALLINT,
 "def_1200" SMALLINT,
 "def_1500" SMALLINT,
 "def_1800" SMALLINT,
 "def_2100" SMALLINT,
 "pulse_duration" REAL,
 "bli" SMALLINT,
 "mli" SMALLINT,
 "lli" SMALLINT,
 "surface" VARCHAR,
 "voids" VARCHAR,
 "surface_failure_deg" SMALLINT,
 "surface_failure_ext" SMALLINT,
 "surface_failpatch_deg" SMALLINT,
 "surface_failpatch_ext" SMALLINT,
 "surface_crack_deg" SMALLINT,
 "surface_crack_ext" SMALLINT,
 "aggr_loss_deg" SMALLINT,
 "aggr_loss_ext" SMALLINT,
 "aggr_loss_act" "char",
 "binder_condition_degree" SMALLINT,
 "binder_condition_ext" SMALLINT,
 "bleeding_deg" SMALLINT,
 "bleeding_ext" SMALLINT,
 "surf_deform_deg" SMALLINT,
 "surf_deform_ext" SMALLINT,
 "block_crack_deg" SMALLINT,
 "block_crack_ext" SMALLINT,
 "long_crack_type" "char",
 "crocodile_crack_deg" SMALLINT,
 "crocodile_crack_ext" SMALLINT,
 "pumping_degree" SMALLINT,
 "potholes_deg" SMALLINT,
 "potholes_ext" SMALLINT,
 "failures_deg" SMALLINT,
 "failures_ext" SMALLINT,
 "rqual_prob_hole" BOOLEAN,
 "rqual_prob_uneven" BOOLEAN,
 "rqual_prob_corr" BOOLEAN,
 "skid_prob_bleed" BOOLEAN,
 "skid_prob_polish" BOOLEAN,
 "drain_prob_align" BOOLEAN,
 "edge_break_deg" SMALLINT,
 "edge_break_ext" SMALLINT,
 "edge_cracks_deg" SMALLINT,
 "edge_cracks_ext" SMALLINT,
 "edge_dropoff_deg" SMALLINT,
 "edge_dropoff_ext" SMALLINT,
 "other_prob_crossings" BOOLEAN,
 "pavement_type" VARCHAR,
 "lane_seg_id" VARCHAR,
 "shoulder_width" REAL,
 "cl_offset" REAL,
 "shoulder_type" VARCHAR,
 "direction" VARCHAR,
 "lane_type" "char",
 "lane_position" SMALLINT,
 "start_date" TIMESTAMP WITHOUT TIME ZONE,
 "end_date" TIMESTAMP WITHOUT TIME ZONE,
 "rdda_id" VARCHAR,
 "auth_rd_id" VARCHAR,
 "sadc_route" VARCHAR,
 "auth_rd_dir" "char",
 "rcam_class" VARCHAR,
 "start_desc" VARCHAR,
 "end_desc" VARCHAR,
 "gis_link_id" VARCHAR,
 "segment_id" VARCHAR,
 "status" SMALLINT,
 "road_type" VARCHAR,
 "no_lanes" SMALLINT,
 "no_shoulders" SMALLINT,
 "base_date" TIMESTAMP WITHOUT TIME ZONE,
 "surface_date" TIMESTAMP WITHOUT TIME ZONE,
 "district" VARCHAR,
 "munic" VARCHAR,
 "resp_auth" VARCHAR,
 "end_longitude" DOUBLE PRECISION,
 "end_latitude" DOUBLE PRECISION,
 "segment_status" VARCHAR,
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
 "from_node_type" VARCHAR,
 "to_node_type" VARCHAR,
 "moisture" "char",
 "gravel_quality" SMALLINT,
 "gqual_oversize" BOOLEAN,
 "gqual_clay" BOOLEAN,
 "gqual_loose" BOOLEAN,
 "max_size" SMALLINT,
 "grading" "char",
 "plasticity" "char",
 "exposed_subgrade" "char",
 "corrugations_deg" SMALLINT,
 "subgrade_quality" "char",
 "corrugations_ext" SMALLINT,
 "loose_material_deg" SMALLINT,
 "loose_material_ext" SMALLINT,
 "stoniness_fix_deg" SMALLINT,
 "stoniness_fix_ext" SMALLINT,
 "stoniness_loose_deg" SMALLINT,
 "stoniness_loose_ext" SMALLINT,
 "erosion_long_deg" SMALLINT,
 "erosion_long_ext" SMALLINT,
 "erosion_trans_deg" SMALLINT,
 "erosion_trans_ext" SMALLINT,
 "rqual_prob_dform" BOOLEAN,
 "rqual_prob_stoniness" BOOLEAN,
 "rqual_prob_rocks" BOOLEAN,
 "rqual_prob_ruts" BOOLEAN,
 "rqual_prob_erosion" BOOLEAN,
 "trafficability_deg" SMALLINT,
 "traffic_prob_steep" BOOLEAN,
 "traffic_prob_rocky" BOOLEAN,
 "traffic_prob_vegetation" BOOLEAN,
 "traffic_prob_drainage" BOOLEAN,
 "safety_deg" SMALLINT,
 "safety_prob_dust" BOOLEAN,
 "safety_prob_slip" BOOLEAN,
 "safety_prob_skid" BOOLEAN,
 "safety_prob_drainage" BOOLEAN,
 "transvers_profile" "char",
 "profile_prob_windrows" BOOLEAN,
 "profile_prob_rutting" BOOLEAN,
 "profile_prob_shape" BOOLEAN,
 "profile_prob_level" BOOLEAN,
 "drainage_side" SMALLINT,
 "drain_prob_culverts" BOOLEAN,
 "drain_prob_mitre" BOOLEAN,
 "drain_prob_level" BOOLEAN
);
CREATE UNIQUE INDEX ON "condition" ("road_id");

CREATE TABLE "lane" (
 "_id" BIGSERIAL,
 "road_id" BIGINT,
 "locality" VARCHAR,
 "road_code" VARCHAR,
 "lane_code" VARCHAR,
 "direction" VARCHAR,
 "lane_type" "char",
 "lane_position" SMALLINT,
 "lane_seg_id" VARCHAR,
 "start_km" REAL,
 "end_km" REAL,
 "shoulder_width" REAL,
 "cl_offset" REAL,
 "shoulder_type" VARCHAR,
 PRIMARY KEY("_id")
);
CREATE INDEX ON "lane" ("road_id");

CREATE TABLE "road" (
 "_id" BIGSERIAL,
 "geometry" geometry(Geometry, 4326),
 "locality" VARCHAR,
 "road_code" VARCHAR,
 "auth_code" VARCHAR,
 "auth_name" VARCHAR,
 "authority_type" VARCHAR,
 "network" VARCHAR,
 "suburb" VARCHAR,
 "ward" VARCHAR,
 "route" VARCHAR,
 "route_seq" SMALLINT,
 "lane_code" VARCHAR,
 "start_km" REAL,
 "end_km" REAL,
 "road_width" REAL,
 "owner" VARCHAR,
 PRIMARY KEY("_id")
);
CREATE INDEX ON "road" USING GIST ("geometry");

CREATE TABLE "road_user" (
 "road_id" BIGINT,
 "locality" VARCHAR
);
CREATE UNIQUE INDEX ON "road_user" ("road_id");

CREATE TABLE "segment" (
 "_id" BIGSERIAL,
 "road_id" BIGINT,
 "locality" VARCHAR,
 "road_code" VARCHAR,
 "start_km" REAL,
 "end_km" REAL,
 "start_date" TIMESTAMP WITHOUT TIME ZONE,
 "end_date" TIMESTAMP WITHOUT TIME ZONE,
 "status" SMALLINT,
 "surf_type" VARCHAR,
 "road_type" VARCHAR,
 "road_width" REAL,
 "no_lanes" SMALLINT,
 PRIMARY KEY("_id")
);
CREATE INDEX ON "segment" ("road_id");

