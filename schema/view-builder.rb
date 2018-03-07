module ViewBuilder
	# Escape an SQL identifier
	def self.quote(x)
		return '"' + x.to_s + '"'
	end

	def self.make_table_id(index)
		return ("a".ord + index).chr
	end

	def self.build_view_statement(name, tables, scenarios, options)
		s = ""
		scenarios.each { |scenario|
			view_name = quote(name + "_" + scenario[1])
			s += "DROP VIEW IF EXISTS #{view_name};\n"
			if options[:only_drop_views]
				next
			end
			s += "CREATE VIEW #{view_name} AS\n"
			s += "\tSELECT\n"
			
			table_index = 0
			tables.each_value { |table|
				table_id = make_table_id(table_index)
				table.each { |field|
					s += "\t\t#{table_id}.#{quote(field)},\n"
				}
				table_index += 1
			}

			if options[:has_geometry]
				geom_field = "Geometry"
				length_field = "Length"
				s += "\t\tST_Length_Spheroid(#{quote(geom_field)}, 'SPHEROID[\"GRS_1980\",6378137,298.257222101]') AS #{quote(length_field)},\n"
			end

			# chop  off last comma and newline, then add back the newline
			s = s[0 .. -3] + "\n"
			
			table_id_0 = make_table_id(0)

			table_index = 0
			tables.each { |table_name, table|
				table_id = make_table_id(table_index)
				full_name = table_name.to_s + "_" + scenario[0]
				if table_index == 0
					s += "\t\tFROM #{quote(full_name)} AS #{table_id}\n"
				else
					s += "\t\tINNER JOIN #{quote(full_name)} AS #{table_id} ON #{table_id_0}.#{quote('ID')} = #{table_id}.#{quote('ID')}\n"
				end
				table_index += 1
			}
			s.chop!
			s += ";\n\n"
		}
		return s
	end
end