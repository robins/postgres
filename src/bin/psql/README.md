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
COPY | Pending Review
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
CREATE TABLE | Pending Review
CREATE TABLE AS | Pending Review
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

