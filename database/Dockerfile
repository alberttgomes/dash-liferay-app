FROM mysql:latest

ENV MYSQL_DATABASE=lportal
ENV MYSQL_USER=albertlportal
ENV MYSQL_PASSWORD=pass
ENV MYSQL_ROOT_PASSWORD=root

# Copy configuration database to into container
COPY ./database/scripts/init.sql /docker-entrypoint-initdb.d/
COPY ./database/mysql/config /etc/mysql/conf.d

CMD ["mysqld", "--character-set-server=utf8mb4", "--collation-server=utf8mb4_unicode_ci"]