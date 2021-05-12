#!/bin/sh

#sh -c  /opt/mssql-tools/bin/sqlcmd  -S $DB_HOST -U $DB_USER -P $DB_PASS   -i "./sql/Shrink.sql" -o "./result/Shrink.txt"

sh -c /opt/mssql-tools/bin/sqlcmd  -S $DB_HOST -U $DB_USER -P $DB_PASS -Q "DBCC SHRINKDATABASE($DB_NAME)" -o "./result/Shrink.txt"