FROM  fabiang/sqlcmd

WORKDIR /app

ENV DB_HOST="host_name_31"
ENV DB_USER="user_name_31"
ENV DB_PASS="pass_name_31"
ENV DB_NAME="name_name_31"

CMD [ "sh", "-c", "/opt/mssql-tools/bin/sqlcmd", "-S", "${DB_HOST}", "-U", "${DB_USER}", "-P", "${DB_PASS}", "-Q", "DBCC SHRINKDATABASE(\"${DB_NAME}\")" ]
