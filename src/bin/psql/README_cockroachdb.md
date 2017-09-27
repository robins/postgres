**Note**: Tab Completion requires quote_ident() that is NOT yet supported by the CockroachDB engine. There is a pending request towards this ( https://github.com/cockroachdb/cockroach/issues/15006 ) however, without this tab-completion is not going to work in its current state.

We could remove quote_ident() requirement from psql, but this would be a pretty big security issue, considering that this is effectively SQL injection in the making.

So by design, tab-completion is going to silently fail (no errors), and intentionally so, until CockroachDB starts support quote_ident(). 

=============================================

This document shows the current state of psql's auto-complete support for CockroachDB.

Reference: https://www.cockroachlabs.com/docs/stable/sql-statements.html

See Support level of all Postgres forks: [Here](https://github.com/robins/postgres/blob/forks/src/bin/psql/README.md)


SQL Commands | Supported State
:----------- |:--------------:
ADD COLUMN | Dependency Unsupported
ADD CONSTRAINT | Dependency Unsupported
ALTER COLUMN | Dependency Unsupported
ALTER TABLE | Dependency Unsupported
ALTER VIEW | Dependency Unsupported
CREATE DATABASE | Dependency Unsupported
CREATE INDEX | Dependency Unsupported
CREATE TABLE | Dependency Unsupported
CREATE TABLE AS | Dependency Unsupported
CREATE VIEW | Dependency Unsupported
DROP COLUMN | Dependency Unsupported
DROP CONSTRAINT | Dependency Unsupported
DROP DATABASE | Dependency Unsupported
DROP INDEX | Dependency Unsupported
DROP TABLE | Dependency Unsupported
DROP VIEW | Dependency Unsupported
RENAME COLUMN | Dependency Unsupported
RENAME DATABASE | Dependency Unsupported
RENAME INDEX | Dependency Unsupported
RENAME TABLE | Dependency Unsupported
SHOW COLUMNS | Dependency Unsupported
SHOW CONSTRAINTS | Dependency Unsupported
SHOW CREATE TABLE | Dependency Unsupported
SHOW CREATE VIEW | Dependency Unsupported
SHOW DATABASES | Dependency Unsupported
SHOW INDEX | Dependency Unsupported
SHOW TABLES | Dependency Unsupported


Support Legend | Description
:-------------:| -----------
Native | All combinations supported by Native psql
Unsupported | Not (yet) supported by PsqlForks
Dependency Unsupported | Engine does not support a dependency
Partial | Only some combinations supported
**Yes** | Supported by (only) this branch (not Native)
Complete | All combinations supported