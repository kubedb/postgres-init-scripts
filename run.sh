#!/bin/bash
set -x

psql -U postgres -d postgres < script.sql;
