FROM mysql:latest

RUN "Init build Dockerfile to database..."

ENV MYSQL_ROOT_PASSWORD=root
ENV MYSQL_USER=albertlportal
ENV MYSQL_PASSWORD=root@123

COPY ./database.sql /docker-entrypoint-initdb.d/
COPY ./mysql/config /etc/mysql/conf.d

EXPOSE 3306 3307 3308 3309