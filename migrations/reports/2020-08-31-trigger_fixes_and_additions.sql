create or replace function update_modtrack_table()
returns trigger
language plpgsql
as
$$
declare target_schema text;
begin
	select case when TG_TABLE_SCHEMA::text = 'public' then '' else concat(TG_TABLE_SCHEMA::text,'.') end into target_schema;
	perform coalesce(update_record(concat(target_schema,TG_TABLE_NAME::text)), insert_record(concat(target_schema,TG_TABLE_NAME::text)));
	return NEW;
end;
$$;

drop trigger if exists update_modtrack on assets."FacilityUtilization";
	create trigger update_modtrack
	after truncate on assets."FacilityUtilization"
	for each statement
	execute procedure update_modtrack_table();

drop trigger if exists update_modtrack on assets."FacilityOwnership";
	create trigger update_modtrack
	after truncate on assets."FacilityOwnership"
	for each statement
	execute procedure update_modtrack_table();

	drop trigger if exists update_modtrack on leasing."LeasedInPropertiesTheme";
	create trigger update_modtrack
	after truncate on leasing."LeasedInPropertiesTheme"
	for each statement
	execute procedure update_modtrack_table();

	drop trigger if exists update_modtrack on leasing."LeasedOutPropertiesTheme";
	create trigger update_modtrack
	after truncate on leasing."LeasedOutPropertiesTheme"
	for each statement
	execute procedure update_modtrack_table();

drop trigger if exists update_modtrack on leasing."LeasedPropertiesTheme";
	create trigger update_modtrack
	after truncate on leasing."LeasedPropertiesTheme"
	for each statement
	execute procedure update_modtrack_table();
