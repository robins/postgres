This document shows the current state of psql's auto-complete support for CockroachDB.

Reference: https://www.cockroachlabs.com/docs/stable/sql-statements.html

See Support level of all Postgres forks: [Here](https://github.com/robins/postgres/blob/forks/src/bin/psql/README.md)


SQL Commands | Supported State
:----------- |:--------------:
ADD COLUMN | Native
ADD CONSTRAINT | Native
ALTER COLUMN | Native
ALTER TABLE | Native
ALTER VIEW | Native
CREATE DATABASE | Native
CREATE INDEX | Native
CREATE TABLE | Native
CREATE TABLE AS | Native
CREATE VIEW | Native
DROP COLUMN | Native
DROP CONSTRAINT | Native
DROP DATABASE | Native
DROP INDEX | Native
DROP TABLE | Native
DROP VIEW | Native
RENAME COLUMN | Native
RENAME DATABASE | Native
RENAME INDEX | Native
RENAME TABLE | Native
SHOW COLUMNS | Native
SHOW CONSTRAINTS | Native
SHOW CREATE TABLE | Native
SHOW CREATE VIEW | Native
SHOW DATABASES | Native
SHOW INDEX | Native
SHOW TABLES | Native


Support Legend | Description
:-------------:| -----------
Native | All combinations supported by Native psql
Unsupported | Not (yet)supported
Partial | Only some combinations supported
**Yes** | Supported by (only) this branch (not Native)
Complete | All combinations supported