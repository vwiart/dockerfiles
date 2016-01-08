FROM vwiart/debian:1.0.0
MAINTAINER http://synapps.io/

ENV LOCAL_USER=nginx
ENV LOCAL_GROUP=nginx

RUN groupadd $LOCAL_GROUP && \
	useradd -ms /bin/bash $LOCAL_USER -g $LOCAL_GROUP && \
	apt-get install -y nginx && \
	rm -Rf /etc/nginx/sites-available && \
	rm -Rf /etc/nginx/sites-enabled && \
	rm -Rf /etc/nginx/snippets
ADD resources/nginx.conf /etc/nginx/nginx.conf
ADD resources/startup.sh /startup.sh
WORKDIR $WORKDIR

VOLUME ["/etc/nginx/conf.d"]
CMD ["sh", "-c", "/startup.sh"]
