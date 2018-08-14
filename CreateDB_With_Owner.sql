IF DB_ID('dev') IS NULL
BEGIN

	CREATE DATABASE dev
		ON (NAME = dev, FILENAME = 'D:\Data\dev.mdf') LOG ON (NAME = dev_log, FILENAME = 'D:\Data\dev.log')
END

IF DATABASE_PRINCIPAL_ID('dev') IS NULL
BEGIN
	CREATE LOGIN dev WITH PASSWORD = 'dev', DEFAULT_DATABASE = dev, CHECK_EXPIRATION = OFF, CHECK_POLICY = OFF

	USE dev

	CREATE USER dev FOR LOGIN dev

	EXEC sp_addrolemember 'db_owner', 'dev'
END
