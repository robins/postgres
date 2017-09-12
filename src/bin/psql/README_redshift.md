This document shows the current state of psql's auto-complete support for Amazon Redshift

NOTE: This branch is maintained as a personal effort and is not sponsored / supported by my Employer or any other third-party. This is not officially supported / endorsed by Amazon in any way.

See Support level of all Postgres forks: Here(https://github.com/robins/postgres/blob/redshift/src/bin/psql/README.md)

Support Legend | Description
:-------------:| -----------
Native | All combinations supported by Native psql
Unsupported | Not (yet)supported
Partial | Only some combinations supported
**Yes** | Supported by (only) this branch (not Native)
Complete | All combinations supported



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
ALTER TABLE ADD COLUMN | **Yes**
ALTER TABLE SET LOCATION | **Yes**
ALTER TABLE SET FILE FORMAT | **Yes**
ALTER TABLE SET TABLE PROPERTIES | **Yes**
ALTER TABLE PARTITION | **Yes**
ALTER TABLE ADD PARTITION | **Yes**
ALTER TABLE DROP PARTITION | **Yes**
ALTER TABLE (Similarly Many Variants) | Unsupported
ALTER TABLE APPEND | **Yes**
ALTER USER | Complete
ALTER USER [NO]CREATEUSER | **Yes**
ANALYZE | Complete
ANALYZE VERBOSE | **Yes**
ANALYSE PREDICATE COLUMNS | **Yes**
ANALYZE ALL COLUMNS | **Yes**
ANALYZE COMPRESSION | **Yes**
BEGIN | Native
CANCEL | **Yes**
CLOSE | **Yes**
COMMENT | Native
COMMIT | Native
COPY | Partial
COPY .. REGION (aws-regions) | **Yes**
COPY (Many Variants) | Unsupported
CREATE DATABASE | Complete
CREATE DATABASE CONNECTION LIMIT UNLIMITED | **Yes**
CREATE DATABASE WITH | **Yes**
CREATE DATABASE WITH OWNER | **Yes**
CREATE DATABASE OWNER | **Yes**
CREATE EXTERNAL SCHEMA | **Yes**
CREATE EXTERNAL TABLE | **Yes**
CREATE FUNCTION | Complete
CREATE OR REPLACE FUNCTION | **Yes**
CREATE GROUP | Native
CREATE LIBRARY | **Yes**
CREATE OR REPLACE LIBRARY | **Yes**
CREATE SCHEMA | Complete
CREATE SCHEMA AUTHORIZATION | **Yes**
CREATE SCHEMA IF NOT EXISTS | **Yes**
CREATE TABLE | Partial
CREATE LOCAL TABLE | **Yes**
CREATE TABLE IF | **Yes**
CREATE TABLE BACKUP | **Yes**
CREATE TABLE DISTSTYLE | **Yes**
CREATE TABLE DISTKEY | **Yes**
CREATE TABLE INTERLEAVED SORTKEY | **Yes**
CREATE TABLE COMPOUND SORTKEY | **Yes**
CREATE TABLE SORTKEY | **Yes**
CREATE TABLE (similarly many variants) | Unsupported
CREATE TABLE AS | **Yes**
CREATE USER | Complete
CREATE USER [NO]CREATEUSER | **Yes**
CREATE VIEW | Partial
CREATE OR REPLACE VIEW | **Yes**
DEALLOCATE | Complete
DEALLOCATE PREPARE | **Yes**
DECLARE | Native
DELETE | Complete
DELETE FROM USING WHERE | **Yes**
DROP DATABASE | Native
DROP FUNCTION | Native
DROP GROUP | Native
DROP LIBRARY | **Yes**
DROP SCHEMA | Complete
DROP SCHEMA IF EXISTS | **Yes**
DROP TABLE | Complete
DROP TABLE IF EXISTS | **Yes**
DROP USER | Complete
DROP USER IF EXISTS | **Yes**
DROP VIEW | Complete
DROP VIEW IF EXISTS | **Yes**
END | Native
EXECUTE | Native
EXPLAIN | Native
FETCH | Complete
FETCH NEXT | **Yes**
FETCH ALL | **Yes**
GRANT | Partial
GRANT (similarly many variants) | Unsupported
INSERT | Native
LOCK | Native
PREPARE | Native
RESET | Native
REVOKE | Partial
REVOKE GRANT | **Yes**
REVOKE (similarly many variants) | Unsupported
ROLLBACK | Native
SELECT | Partial
SELECT TOP | **Yes**
SELECT ALL | **Yes**
SELECT DISTINCT | **Yes**
SELECT (similarly many variants) | Unsupported
SELECT INTO | **WIP**
SET | Complete
SET SEED TO | **Yes**
SHOW | Native
START TRANSACTION | Native
TRUNCATE | Complete
TRUNCATE TABLE | **Yes**
UNLOAD | **Yes**
UPDATE | Complete
UPDATE SET FROM | **Yes**
UPDATE SET WHERE | **Yes**
VACUUM | Complete
VACUUM SORT | **Yes**
VACUUM DELETE | **Yes**
VACUUM REINDEX | **Yes**
VACUUM TO | **Yes**



