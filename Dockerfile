FROM ubuntu:14.04
MAINTAINER Daniel Craigmile
ENV DEBIAN_FRONTEND noninteractive

# requires java
RUN apt-get install -y openjdk-7-jre-headless
# set up to recognize repo
RUN apt-get install -y wget
RUN wget -O - http://packages.elasticsearch.org/GPG-KEY-elasticsearch | apt-key add -
RUN echo "deb http://packages.elasticsearch.org/elasticsearch/1.2/debian stable main" > /etc/apt/sources.list.d/elasticsearch.list
RUN apt-get update -y

RUN apt-get install elasticsearch

CMD ["/usr/share/elasticsearch/bin/elasticsearch"]

EXPOSE 9200
EXPOSE 9300
