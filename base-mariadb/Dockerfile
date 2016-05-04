FROM debian:jessie

ENV TERM dumb
# Install MariaDB.
RUN apt-get update -y && \
	DEBIAN_FRONTEND=noninteractive apt-get install --no-install-recommends -y mariadb-server mariadb-client && \
	apt-get clean -y && \
	rm -Rf /var/lib/apt/lists/*
RUN sed -i 's/^\(bind-address\s.*\)/# \1/' /etc/mysql/my.cnf && \
	echo "mysqld_safe &" > /tmp/config && \
	echo "mysqladmin --silent --wait=30 ping || exit 1" >> /tmp/config && \
	echo "mysql -e 'GRANT ALL PRIVILEGES ON *.* TO \"root\"@\"%\" WITH GRANT OPTION;'" >> /tmp/config && \
	bash /tmp/config && \
	rm -f /tmp/config
# Define mountable directories.
VOLUME ["/var/lib/mysql"]

# Expose ports.
EXPOSE 3306

# Define default command.
CMD ["mysqld_safe"]
