**Note**: Tab Completion requires quote_ident() that is NOT yet supported by the CockroachDB engine. There is a pending request towards this ( https://github.com/cockroachdb/cockroach/issues/15006 ) however, without this tab-completion is not going to work in its current state.

We could remove quote_ident() requirement from psql, but this would be a pretty big security issue, considering that this is effectively SQL injection in the making.

So by design, tab-completion is going to silently fail (no errors), and intentionally so, until CockroachDB starts support quote_ident(). 

=============================================

This document shows the current state of psql's auto-complete support for CockroachDB.

Reference: https://www.cockroachlabs.com/docs/stable/sql-statements.html

See Support level of all Postgres forks: [Here](https://github.com/robins/postgres/blob/forks/src/bin/psql/README.md)


psql Commands | Supported State
:------------ |:--------------:
\a | Untested
\C | Untested
\cd | Untested
\conninfo | Untested
\copy | Untested
\copyright | Untested
\crosstabview | Untested
\dS[+] | Untested
\da[S] | Untested
\dA[+] | Untested
\db[+] | Untested
\dc[S+] | Untested
\dC[+] | Untested
\dd[S] | Untested
\dD[S+] | Untested
\ddp | Untested
\dE[S+] | Untested
\di[S+] | Untested
\dm[S+] | Untested
\ds[S+] | Untested
\dt[S+] | Untested
\dv[S+] | Untested
\des[+] | Untested
\det[+] | Untested
\deu[+] | Untested
\dew[+] | Untested
\df[antwS+] | Untested
\dF[+] | Untested
\dFd[+] | Untested
\dFp[+] | Untested
\dFt[+] | Untested
\dg[S+] | Untested
\dl | Untested
\dL[S+] | Untested
\dn[S+] | Untested
\do[S+] | Untested
\dO[S+] | Untested
\dp | Untested
\drds | Untested
\dRp[+] | Untested
\dRs[+] | Untested
\dT[S+] | Untested
\du[S+] | Untested
\dx[+] | Untested
\dy[+] | Untested
\e | Untested
\echo | Untested
\ef | Untested
\encoding | Untested
\errverbose | Untested
\ev | Untested
\f | Untested
\g | Untested
\gdesc | Untested
\gexec | Untested
\gset | Untested
\gx | Untested
\h | Untested
\H | Untested
\i | Untested
\if | Untested
\elif | Untested
\else | Untested
\endif | Untested
\ir | Untested
\l[+] | Untested
\lo_export | Untested
\lo_import | Untested
\lo_list | Untested
\lo_unlink | Untested
\o | Untested
\p | Untested
\password | Untested
\prompt | Untested
\pset | Untested
\q | Untested
\qecho | Untested
\r | Untested
\s | Untested
\set | Untested
\setenv | Untested
\sf[+] | Untested
\sv[+] | Untested
\t | Untested
\T | Untested
\timing | Untested
\unset | Untested
\w | Untested
\watch | Untested
\x | Untested
\z | Untested
\! | Untested
\? | Untested
\; | Untested


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