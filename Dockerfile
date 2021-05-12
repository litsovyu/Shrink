FROM  fabiang/sqlcmd
# заменить на образ с sqlcmd или MSSQL-Scripter

WORKDIR /app

# Copy application dependency manifests to the container image.
# Copying this separately prevents re-running npm install on every code change.
COPY ./sh ./sh 
COPY ./sql ./sql

# Run the web service on container startup.
CMD [ "./sh/run_Shrink.sh" ]

# or

# CMD [ "sh -c /opt/mssql-tools/bin/sqlcmd  -S $DB_HOST -U $DB_USER -P $DB_PASS -Q "DBCC SHRINKDATABASE($DB_NAME)" -o "./result/Shrink.txt"" ]