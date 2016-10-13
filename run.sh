#!/bin/bash
set -x

psql -U postgres -d postgres < kubernetes-gitRepo/data.sql;
