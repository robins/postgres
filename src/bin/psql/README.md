This document shows the current state of psql's auto-complete support for Amazon Redshift

NOTE: This branch is maintained as a personal effort and is not sponsored / supported by my Employer or any other third-party. This is not officially supported / endorsed by Amazon in any way.

Support Legend | Description
-------------- | -----------
Supported | All possible combinations are supported by psql's auto-complete feature
Unsupported | SQL Command not supported
Partial-Support | Only some possible combinations are supported by psql's auto-complete feature



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
ALTER USER | **Partial-Support**
ALTER USER [NO]CREATEUSER | Unsupported
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
COPY | Unsupported
CREATE DATABASE | **Partial-Support**
CREATE DATABASE CONNECTION LIMIT UNLIMITED | Unsupported
CREATE EXTERNAL SCHEMA | Unsupported
CREATE EXTERNAL TABLE | Unsupported
CREATE FUNCTION | **Partial-Support**
CREATE OR REPLACE FUNCTION | Unsupported
CREATE GROUP | Supported
CREATE LIBRARY | Unsupported
CREATE SCHEMA | **Partial-Support**
CREATE SCHEMA AUTHORIZATION | Unsupported
CREATE SCHEMA IF NOT EXISTS | Unsupported
CREATE TABLE | **Partial-Support**
CREATE LOCAL TABLE | Unsupported
CREATE TABLE IF | Unsupported
CREATE TABLE BACKUP | Unsupported
CREATE TABLE DISTSTYLE | Unsupported
CREATE TABLE DISTKEY | Unsupported
CREATE TABLE SORTKEY | Unsupported
CREATE TABLE <similarly many Variants> | Unsupported
CREATE TABLE AS | Unsupported
CREATE USER | **Partial-Support**
CREATE USER [NO]CREATEUSER | Unsupported
CREATE VIEW | **Partial-Support**
CREATE OR REPLACE VIEW | Unsupported
DEALLOCATE | **Partial-Support**
DEALLOCATE PREPARE | Unsupported
DECLARE | Supported
DELETE | **Partial-Support**
DELETE FROM USING WHERE | Unsupported
DROP DATABASE | Supported
DROP FUNCTION | Supported
DROP GROUP | Supported
DROP LIBRARY | Unsupported
DROP SCHEMA | **Partial-Support**
DROP SCHEMA IF EXISTS | Unsupported
DROP TABLE | **Partial-Support**
DROP TABLE | Unsupported
DROP USER | **Partial-Support**
DROP USER IF EXISTS | Unsupported
DROP VIEW | **Partial-Support**
DROP VIEW IF EXISTS | Unsupported
END | Supported
EXECUTE | Supported
EXPLAIN | Supported
FETCH | **Partial-Support**
FETCH NEXT | Unsupported
FETCH ALL | Unsupported
GRANT | **Partial-Support**
GRANT ALL PRIVILEGES | Unsupported
GRANT ALL ON TABLE ALL TABLES IN SCHEMA | Unsupported
GRANT ALL ON TABLE TO GROUP | Unsupported
GRANT ALL ON TABLE ALL TABLES IN SCHEMA | Unsupported
GRANT CREATE ALL | Unsupported
GRANT CREATE ON | Unsupported
GRANT <similarly many variants> | Unsupported
INSERT | **Partial-Support**
INSERT INTO DEFAULT VALUES | Unsupported
LOCK | Supported
PREPARE | **Partial-Support**
PREPARE AS | Unsupported
RESET | **Partial-Support**
RESET ALL | Unsupported
REVOKE | **Partial-Support**
REVOKE GRANT | Unsupported
REVOKE SELECT ALL PRIVILEGES | Unsupported
REVOKE <similarly many variants> | Unsupported
ROLLBACK | Supported
SELECT | **Partial-Support**
SELECT TOP | Unsupported
SELECT ALL | Unsupported
SELECT DISTINCT | Unsupported
SELECT <similarly many Variants> | Unsupported
SELECT INTO | Unsupported
SET | **Partial-Support**
SET ALL | Unsupported
SET SEED TO | Unsupported
SET SESSION AUTHORIZATION | Unsupported
SET SESSION CHARACTERISTICS | Supported
SHOW | **Partial-Support**
SHOW ALL | Unsupported
START TRANSACTION | Supported
TRUNCATE | **Partial-Support**
TRUNCATE TABLE | Unsupported
UNLOAD | Unsupported
UPDATE | Unsupported
UPDATE SET FROM | Unsupported
UPDATE SET WHERE | Unsupported
VACUUM | **Partial-Support**
VACUUM SORT | Unsupported
VACUUM DELETE | Unsupported
VACUUM REINDEX | Unsupported
VACUUM TO | Unsupported