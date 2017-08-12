This document shows the current state of psql's auto-complete support for Amazon Redshift

NOTE: This branch is maintained as a personal effort and is not sponsored / supported by my Employer or any other third-party. This is not officially supported / endorsed by Amazon in any way.


Support Legend | Description
:-------------:| -----------
Native | All combinations supported by Native psql
Unsupported | Not supported (yet)
Partial | Only some combinations supported
**Yes** | Supported by this branch (not Native)
Supported | All combinations (now) supported by this branch



Parameters | Supported State
:---------:|:--------------:
analyze_threshold_percent | Unsupported
datestyle | Native
enable_user_activity_logging | Unsupported
extra_float_digits | Native
query_group | Unsupported
require_ssl | Unsupported
search_path | Native
statement_timeout | Native
wlm_json_configuration | Unsupported



SQL Commands | Supported State
:----------- |:--------------:
ABORT | Native
ALTER DATABASE | Native
ALTER DEFAULT PRIVILEGES | Native
ALTER GROUP | Native
ALTER SCHEMA | Native
ALTER TABLE | Partial
ALTER TABLE ADD COLUMN ENCODING | Unsupported
ALTER TABLE SET LOCATION 's3://bucket/folder' | Unsupported
ALTER TABLE SET FILE FORMAT format | Unsupported
ALTER TABLE SET TABLE PROPERTIES ( 'numRows'='row_count' ) | Unsupported
ALTER TABLE PARTITION ( partition_column=partition_value [, ...] ) SET LOCATION 's3://bucket/folder' | Unsupported
ALTER TABLE ADD PARTITION ( partition_column=partition_value [, ...] ) LOCATION 's3://bucket/folder' | Unsupported
ALTER TABLE DROP PARTITION ( partition_column=partition_value [, ...] ) | Unsupported
ALTER TABLE APPEND | Unsupported
ALTER USER | Supported
ALTER USER [NO]CREATEUSER | **Yes**
ANALYZE | Partial
ANALYZE VERBOSE | Unsupported
ANALYSE PREDICATE COLUMNS | Unsupported
ANALYZE ALL COLUMNS | Unsupported
ANALYZE COMPRESSION | Unsupported
BEGIN | Native
CANCEL | Unsupported
CLOSE | Unsupported
COMMENT | Native
COMMIT | Native
COPY | Unsupported
COPY .. REGION <aws-regions> | **Yes**
CREATE DATABASE | Supported
CREATE DATABASE CONNECTION LIMIT UNLIMITED | **Yes**
CREATE DATABASE WITH | **Yes**
CREATE DATABASE WITH OWNER | **Yes**
CREATE DATABASE OWNER | **Yes**
CREATE EXTERNAL SCHEMA | Unsupported
CREATE EXTERNAL TABLE | Unsupported
CREATE FUNCTION | Supported
CREATE OR REPLACE FUNCTION | **Yes**
CREATE GROUP | Native
CREATE LIBRARY | **Yes**
CREATE OR REPLACE LIBRARY | **Yes**
CREATE SCHEMA | Supported
CREATE SCHEMA AUTHORIZATION | **Yes**
CREATE SCHEMA IF NOT EXISTS | **Yes**
CREATE TABLE | Partial
CREATE LOCAL TABLE | Unsupported
CREATE TABLE IF | Unsupported
CREATE TABLE BACKUP | Unsupported
CREATE TABLE DISTSTYLE | Unsupported
CREATE TABLE DISTKEY | Unsupported
CREATE TABLE SORTKEY | Unsupported
CREATE TABLE <similarly many Variants> | Unsupported
CREATE TABLE AS | Unsupported
CREATE USER | Supported
CREATE USER [NO]CREATEUSER | **Yes**
CREATE VIEW | Partial
CREATE OR REPLACE VIEW | **Yes**
DEALLOCATE | Partial
DEALLOCATE PREPARE | Unsupported
DECLARE | Native
DELETE | Partial
DELETE FROM USING WHERE | Unsupported
DROP DATABASE | Native
DROP FUNCTION | Native
DROP GROUP | Native
DROP LIBRARY | **Yes**
DROP SCHEMA | Partial
DROP SCHEMA IF EXISTS | Unsupported
DROP TABLE | Partial
DROP TABLE | Unsupported
DROP USER | Partial
DROP USER IF EXISTS | Unsupported
DROP VIEW | Partial
DROP VIEW IF EXISTS | Unsupported
END | Native
EXECUTE | Native
EXPLAIN | Native
FETCH | Partial
FETCH NEXT | Unsupported
FETCH ALL | Unsupported
GRANT | Partial
GRANT ALL PRIVILEGES | Unsupported
GRANT ALL ON TABLE ALL TABLES IN SCHEMA | Unsupported
GRANT ALL ON TABLE TO GROUP | Unsupported
GRANT ALL ON TABLE ALL TABLES IN SCHEMA | Unsupported
GRANT CREATE ALL | Unsupported
GRANT CREATE ON | Unsupported
GRANT <similarly many variants> | Unsupported
INSERT | Partial
INSERT INTO DEFAULT VALUES | Unsupported
LOCK | Native
PREPARE | Partial
PREPARE AS | Unsupported
RESET | Partial
RESET ALL | Unsupported
REVOKE | Partial
REVOKE GRANT | Unsupported
REVOKE SELECT ALL PRIVILEGES | Unsupported
REVOKE <similarly many variants> | Unsupported
ROLLBACK | Native
SELECT | Partial
SELECT TOP | Unsupported
SELECT ALL | Unsupported
SELECT DISTINCT | Unsupported
SELECT <similarly many Variants> | Unsupported
SELECT INTO | Unsupported
SET | Partial
SET ALL | Unsupported
SET SEED TO | Unsupported
SET SESSION AUTHORIZATION | Unsupported
SET SESSION CHARACTERISTICS | Native
SHOW | Partial
SHOW ALL | Unsupported
START TRANSACTION | Native
TRUNCATE | Partial
TRUNCATE TABLE | Unsupported
UNLOAD | Unsupported
UPDATE | Unsupported
UPDATE SET FROM | Unsupported
UPDATE SET WHERE | Unsupported
VACUUM | Partial
VACUUM SORT | Unsupported
VACUUM DELETE | Unsupported
VACUUM REINDEX | Unsupported
VACUUM TO | Unsupported



