#!/bin/bash
set -x

psql -U postgres -d postgres < postgres-init-scripts/data.sql;
