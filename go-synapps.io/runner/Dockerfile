FROM debian:jessie

ENV LOCAL_USER=synapps
ENV LOCAL_GROUP=synapps
ENV WORKDIR=/home/$LOCAL_USER

RUN apt-get update -y && apt-get upgrade -y
RUN groupadd $LOCAL_GROUP && useradd -ms /bin/bash $LOCAL_USER -g $LOCAL_GROUP -d $WORKDIR

VOLUME ["/home/synapps"]
USER $LOCAL_USER
WORKDIR $WORKDIR

EXPOSE 9000

CMD ["/home/synapps/go-synapps.io"]
