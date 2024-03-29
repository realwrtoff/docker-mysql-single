FROM mysql:8.0.16
COPY my.cnf /etc/mysql/my.cnf
RUN mkdir -p /var/log/mysqld
RUN chown -R mysql:mysql /var/log/mysqld /var/lib/mysql /var/run/mysqld
CMD [ "mysqld" ]
