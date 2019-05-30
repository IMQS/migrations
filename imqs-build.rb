require "fileutils"

out_dir = "../out"
out_db = out_dir + "/db"

case ARGV[0]
	when "prepare"	then
	when "copy_out" then
		FileUtils.mkdir_p(out_db)
		FileUtils.mkdir_p(out_db + "/migrations")
		FileUtils.cp_r("schema/.", out_db)
		FileUtils.cp_r("migrations/.", out_db + "/migrations")

		# Replace schemas with there -prev.schema versions as they allready
		# contain the subschemas. Schemas without a -prev.schema probably does
		# not have subschemas
		Dir.glob(out_db + "/*-prev.schema").each do |f|
			base = f
			base.sub! '-prev', ''
			File.delete(base)
			FileUtils.mv(f, base)
		end

		# These three files were excludes from imqsbin\db when this repo was created
		# at 2018-03-07, so we omit them here too for consistency.
		File.delete(out_db + "/generic.schema")
		File.delete(out_db + "/LatLon-WGS84.prj")
		File.delete(out_db + "/theme.schema")
	when "test_unit" then
	when "test_integration" then
end
