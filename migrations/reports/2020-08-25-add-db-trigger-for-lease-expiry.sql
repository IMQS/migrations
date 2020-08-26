-- increment modtrack record and return the record id
create or replace function update_record(tablein text)
returns int
language plpgsql
as
$$
declare updated_recid int;
begin
	update public.modtrack_tables set stamp = stamp + 1
	where tablename = tablein
	returning recid into updated_recid;
	return updated_recid;
end;
$$;

-- insert modtrack record and return the record id
create or replace function insert_record(tablein text)
returns int
language plpgsql
as
$$
declare new_recid int;
begin
	WITH new_record as (
		SELECT
			coalesce(max(recid),0) + 1 as recid,
			tablein as tablename,
			1 as createcount,
			1 as stamp
		FROM public.modtrack_tables
	)
	insert into public.modtrack_tables (recid, tablename, createcount, stamp)
	select * from new_record
	RETURNING recid into new_recid;
	return new_recid;
end;
$$;

-- increment modtrack record and return the record id
create or replace function update_modtrack_table()
returns trigger
language plpgsql
as
$$
declare target_schema text;
begin
	perform pg_sleep(30); -- give etl time to finish since trigger in on truncate
	-- dont prepend schema if public
	select case when TG_TABLE_SCHEMA::text = 'public' then '' else concat(TG_TABLE_SCHEMA::text,'.') end into target_schema;
	perform coalesce(update_record(concat(target_schema,TG_TABLE_NAME::text)), insert_record(concat(target_schema,TG_TABLE_NAME::text)));
	return NEW;
end;
$$;

drop trigger if exists update_modtrack_leasedoutproperties on leasing."LeasedOutPropertiesTheme";
	create trigger update_modtrack
	after truncate on leasing."LeasedOutPropertiesTheme"
	for each statement
	execute procedure update_modtrack_table();

drop trigger if exists update_modtrack_leasedproperties on leasing."LeasedPropertiesTheme";
	create trigger update_modtrack
	after truncate on leasing."LeasedPropertiesTheme"
	for each statement
	execute procedure update_modtrack_table();
