#FROM vwiart/debian:1.0.0
FROM debian:jessie
MAINTAINER http://synapps.io

ENV LOCAL_USER=golang
ENV LOCAL_GROUP=golang
ENV WORKDIR=/home/$LOCAL_USER
ENV GOROOT=$WORKDIR/go
ENV GOPATH=$WORKDIR/
ENV PATH=$PATH:$WORKDIR/go/bin:$GOROOT/bin

RUN apt-get update -y && \
        apt-get upgrade -y && \
        apt-get install -y curl && \
	groupadd $LOCAL_GROUP && \
        useradd -ms /bin/bash $LOCAL_USER -g $LOCAL_GROUP -d $WORKDIR && \
	curl -o $WORKDIR/go-1.5.tgz https://storage.googleapis.com/golang/go1.5.3.linux-amd64.tar.gz && \
	tar -C $WORKDIR -xzf $WORKDIR/go-1.5.tgz && \
	rm -f $WORKDIR/go-1.5.tgz && \
	mkdir $WORKDIR/bin && \
	mkdir $WORKDIR/pkg
WORKDIR $WORKDIR
VOLUME ["$WORKDIR/src","$WORKDIR/bin"]
