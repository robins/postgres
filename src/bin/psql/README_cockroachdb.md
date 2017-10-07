**Note**: Tab Completion requires quote_ident() that is NOT yet supported by the CockroachDB engine. There is a pending request towards this ( https://github.com/cockroachdb/cockroach/issues/15006 ) however, without this tab-completion is not going to work in its current state.

We could remove quote_ident() requirement from psql, but this would be a pretty big security issue, considering that this is effectively SQL injection in the making.

So by design, tab-completion is going to silently fail (no errors), and intentionally so, until CockroachDB starts support quote_ident(). This issue is logged in #21 and would be addressed if the Dependency is resolved.

=============================================

This document shows the current state of psql's auto-complete support for CockroachDB.

Reference: https://www.cockroachlabs.com/docs/stable/sql-statements.html

See Support level of all Postgres forks: [Here](https://github.com/robins/postgres/blob/forks/src/bin/psql/README.md)


psql Commands | Supported State | Description
:------------ |:--------------:|:------------
\a | Native
\C | Native
\cd | Untested
\conninfo | Native
\copy | Untested
\copyright | Native
\crosstabview | Untested
\dS[+] | **Yes**
\da[S] | Untested
\dA[+] | Dependency Unsupported|The server (version 9.5) does not support access methods.
\db[+] | Untested
\dc[S+] | Untested
\dC[+] | Untested
\dd[S] | Untested
\dD[S+] | Untested
\ddp | Untested
\dE[S+] | Untested
\di[S+] | **Yes**
\dm[S+] | Untested
\ds[S+] | Untested
\dt[S+] | **Yes**
\dv[S+] | **Yes**
\des[+] | Untested
\det[+] | Untested
\deu[+] | Untested
\dew[+] | Untested
\df[antwS+] | **Yes**
\dF[+] | Dependency Unsupported
\dFd[+] | Untested
\dFp[+] | Untested
\dFt[+] | Untested
\dg[S+] | **Yes**
\dl | Dependency Unsupported | pg_largeobject_metadata not supported in Engine
\dL[S+] | Untested
\dn[S+] | **Yes**
\do[S+] | Untested
\dO[S+] | Untested
\dp | Untested
\drds | Untested
\dRp[+] | Untested
\dRs[+] | Untested
\dT[S+] | Untested
\du[S+] | Partial
\dx[+] | Dependency Unsupported | Issue cockroachdb/cockroach#13436 didn't add supported for OID column
\dy[+] | Dependency Unsupported | Functions not supported in Engine
\e | Native
\echo | Native
\ef | Dependency Unsupported | Functions not supported in Engine
\encoding | Untested
\errverbose | Untested
\ev | Dependency Unsupported | Issue #24 is logged towards this
\f | Native
\g | Untested
\gdesc | Untested
\gexec | Untested
\gset | Untested
\gx | Untested
\h | Native
\H | Native
\i | Untested
\if | Untested
\elif | Untested
\else | Untested
\endif | Untested
\ir | Untested
\l[+] | **Yes**
\lo_export | Untested
\lo_import | Untested
\lo_list | Untested
\lo_unlink | Untested
\o | Native
\p | Untested
\password | Untested
\prompt | Untested
\pset | Untested
\q | Native
\qecho | Native
\r | Untested
\s | Untested
\set | Untested
\setenv | Untested
\sf[+] | Dependency Unsupported
\sv[+] | Dependency Unsupported | Issue #24 is logged towards this
\t | Native
\T | Native
\timing | Untested
\unset | Untested
\w | Untested
\watch | Native
\x | Native
\z | Untested
\! | Untested
\? | Untested
\; | Native


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