/*
 * psql - the PostgreSQL interactive terminal
 *
 * Copyright (c) 2000-2017, PostgreSQL Global Development Group
 *
 * src/bin/psql/tab-complete-pipelinedb.h
 */
#ifndef TAB_COMPLETE_PIPELINEDB_H
#define TAB_COMPLETE_PIPELINEDB_H

#include "pqexpbuffer.h"

extern PQExpBuffer tab_completion_query_buf;

extern void initialize_readline_pipelinedb(void);

#endif							/* TAB_COMPLETE_PIPELINEDB_H */
