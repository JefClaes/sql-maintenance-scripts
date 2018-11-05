SELECT 
  COUNT(*) AS sessions,
  s.host_name,
  s.host_process_id,
  s.program_name,
  db_name(s.database_id) as database_name
FROM sys.dm_exec_sessions s
WHERE 
  is_user_process = 1 AND 
  program_name = '_'
GROUP BY host_name, host_process_id, program_name, database_id
ORDER BY COUNT(*) desc;
