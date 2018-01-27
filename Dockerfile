FROM docker.io/mariadb
ENV MYSQL_ROOT_PASSWORD=xpZtcC7AxD
ENV MYSQL_DATABASE=db_nagiosql_v32
ADD nagiosql.sql.gz /docker-entrypoint-initdb.d
ENTRYPOINT ["docker-entrypoint.sh"]
EXPOSE 3306
CMD ["mysqld"]
