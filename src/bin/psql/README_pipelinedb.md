This document shows the current state of psql's auto-complete support for PipelineDB.

Reference: http://docs.pipelinedb.com/

Support Legend | Description
:-------------:| -----------
Native | All combinations supported by Native psql
Unsupported | Not (yet)supported
Partial | Only some combinations supported
**Yes** | Supported by (only) this branch (not Native)
Complete | All combinations supported


SQL Commands | Supported State
:----------- |:--------------:
ALTER STREAM | Partial
CREATE CONTINUOUS TRANSFORM | Partial
CREATE CONTINUOUS VIEW | Partial
CREATE STREAM | Partial
DROP CONTINUOUS TRANSFORM | Partial
DROP CONTINUOUS VIEW | Partial
DROP STREAM | Partial
