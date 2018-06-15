SELECT
  db_name(database_id),
  object_name(object_id),
  ghost_record_count,
  version_ghost_record_count
FROM sys.dm_db_index_physical_stats(DB_ID('db_name'), OBJECT_ID(N'table_name'), NULL, NULL , 'DETAILED')
