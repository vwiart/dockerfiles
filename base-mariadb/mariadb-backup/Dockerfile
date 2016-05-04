FROM synapps/base:1.0
MAINTAINER Vincent Wiart <vincent.wiart@gmail.com>

RUN apt-get install -y mariadb-client

CMD ["mysqldump --all-databases > backup"]
