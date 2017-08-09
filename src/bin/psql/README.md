Redshift Support

NOTE: This branch is maintained as a personal effort and is not sponsored / supported by my Employer or any other third-party. This is not officially supported / endorsed by Amazon in any way.

This document lists the current status of Redshift Support. Unmarked items are probably Pending Review and not necessarily Unsupported.

SQL Commands | Support
:----------- |:-------:
ABORT | Supported
ALTER DATABASE | Supported
ALTER DEFAULT PRIVILEGES | Supported
ALTER GROUP | Supported
ALTER SCHEMA | Supported
ALTER TABLE | Partial Support
- ALTER TABLE ADD COLUMN ENCODING | Unsupported
- ALTER TABLE SET LOCATION 's3://bucket/folder' | Unsupported
- ALTER TABLE SET FILE FORMAT format | Unsupported
- ALTER TABLE SET TABLE PROPERTIES ( 'numRows'='row_count' ) | Unsupported
- ALTER TABLE PARTITION ( partition_column=partition_value [, ...] ) SET LOCATION 's3://bucket/folder' | Unsupported
- ALTER TABLE ADD PARTITION ( partition_column=partition_value [, ...] ) LOCATION 's3://bucket/folder' | Unsupported
- ALTER TABLE DROP PARTITION ( partition_column=partition_value [, ...] ) | Unsupported
ALTER TABLE APPEND | Unsupported
ALTER USER | 
ANALYZE
ANALYZE COMPRESSION
BEGIN
CANCEL
CLOSE
COMMENT
COMMIT
COPY
CREATE DATABASE
CREATE EXTERNAL SCHEMA
CREATE EXTERNAL TABLE
CREATE FUNCTION
CREATE GROUP
CREATE LIBRARY
CREATE SCHEMA
CREATE TABLE
CREATE TABLE AS
CREATE USER
CREATE VIEW
DEALLOCATE
DECLARE
DELETE
DROP DATABASE
DROP FUNCTION
DROP GROUP
DROP LIBRARY
DROP SCHEMA
DROP TABLE
DROP USER
DROP VIEW
END
EXECUTE
EXPLAIN
FETCH
GRANT
INSERT
LOCK
PREPARE
RESET
REVOKE
ROLLBACK
SELECT
SELECT INTO
SET
SET SESSION AUTHORIZATION
SET SESSION CHARACTERISTICS
SHOW
START TRANSACTION
TRUNCATE
UNLOAD
UPDATE
VACUUM


