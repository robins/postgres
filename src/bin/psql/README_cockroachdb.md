This document shows the current state of psql's auto-complete support for CockroachDB.

Reference: https://www.cockroachlabs.com/docs/stable/sql-statements.html

See Support level of all Postgres forks: [Here](https://github.com/robins/postgres/blob/forks/src/bin/psql/README.md)


SQL Commands | Supported State
:----------- |:--------------:
ADD COLUMN | Untested
ADD CONSTRAINT | Untested
ALTER COLUMN | Untested
ALTER TABLE | Untested
ALTER VIEW | Untested
CREATE DATABASE | Untested
CREATE INDEX | Untested
CREATE TABLE | Untested
CREATE TABLE AS | Untested
CREATE VIEW | Untested
DROP COLUMN | Untested
DROP CONSTRAINT | Untested
DROP DATABASE | Untested
DROP INDEX | Untested
DROP TABLE | Untested
DROP VIEW | Untested
RENAME COLUMN | Untested
RENAME DATABASE | Untested
RENAME INDEX | Untested
RENAME TABLE | Untested
SHOW COLUMNS | Untested
SHOW CONSTRAINTS | Untested
SHOW CREATE TABLE | Untested
SHOW CREATE VIEW | Untested
SHOW DATABASES | Untested
SHOW INDEX | Untested
SHOW TABLES | Untested


Support Legend | Description
:-------------:| -----------
Native | All combinations supported by Native psql
Unsupported | Not (yet)supported
Partial | Only some combinations supported
**Yes** | Supported by (only) this branch (not Native)
Complete | All combinations supported