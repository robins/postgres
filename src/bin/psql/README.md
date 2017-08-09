psql Auto-Complete support for Amazon Redshift

NOTE: This branch is maintained as a personal effort and is not sponsored / supported by my Employer or any other third-party. This is not officially supported / endorsed by Amazon in any way.

This document lists the current state of psql Auto-Complete support for Redshift commands.

SQL Commands | Redshift Support
:----------- |:-------:
ABORT | Supported
ALTER DATABASE | Supported
ALTER DEFAULT PRIVILEGES | Supported
ALTER GROUP | Supported
ALTER SCHEMA | Supported
ALTER TABLE | **Partial-Support**
ALTER TABLE ADD COLUMN ENCODING | Unsupported
ALTER TABLE SET LOCATION 's3://bucket/folder' | Unsupported
ALTER TABLE SET FILE FORMAT format | Unsupported
ALTER TABLE SET TABLE PROPERTIES ( 'numRows'='row_count' ) | Unsupported
ALTER TABLE PARTITION ( partition_column=partition_value [, ...] ) SET LOCATION 's3://bucket/folder' | Unsupported
ALTER TABLE ADD PARTITION ( partition_column=partition_value [, ...] ) LOCATION 's3://bucket/folder' | Unsupported
ALTER TABLE DROP PARTITION ( partition_column=partition_value [, ...] ) | Unsupported
ALTER TABLE APPEND | Unsupported
ALTER USER | Supported
ANALYZE | **Partial-Support**
ANALYZE VERBOSE | Unsupported
ANALYSE PREDICATE COLUMNS | Unsupported
ANALYZE ALL COLUMNS | Unsupported
ANALYZE COMPRESSION | Unsupported
BEGIN | Supported
CANCEL | Unsupported
CLOSE | Unsupported
COMMENT | Supported
COMMIT | Supported
COPY | Pending Review
CREATE DATABASE | **Partial-Support**
CREATE DATABASE CONNECTION LIMIT UNLIMITED | Unsupported
CREATE EXTERNAL SCHEMA | Pending Review
CREATE EXTERNAL TABLE | Pending Review
CREATE FUNCTION | Pending Review
CREATE GROUP | Pending Review
CREATE LIBRARY | Pending Review
CREATE SCHEMA | Pending Review
CREATE TABLE | Pending Review
CREATE TABLE AS | Pending Review
CREATE USER | Pending Review
CREATE VIEW | Pending Review
DEALLOCATE | Pending Review
DECLARE | Pending Review
DELETE | Pending Review
DROP DATABASE | Pending Review
DROP FUNCTION | Pending Review
DROP GROUP | Pending Review
DROP LIBRARY | Pending Review
DROP SCHEMA | Pending Review
DROP TABLE | Pending Review
DROP USER | Pending Review
DROP VIEW | Pending Review
END | Pending Review
EXECUTE | Pending Review
EXPLAIN | Pending Review
FETCH | Pending Review
GRANT | Pending Review
INSERT | Pending Review
LOCK | Pending Review
PREPARE | Pending Review
RESET | Pending Review
REVOKE | Pending Review
ROLLBACK | Pending Review
SELECT | Pending Review
SELECT INTO | Pending Review
SET | Pending Review
SET SESSION AUTHORIZATION | Pending Review
SET SESSION CHARACTERISTICS | Pending Review
SHOW | Pending Review
START TRANSACTION | Pending Review
TRUNCATE | Pending Review
UNLOAD | Pending Review
UPDATE | Pending Review
VACUUM | Pending Review

