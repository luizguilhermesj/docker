# Solr
#
# VERSION       1.0

# use the ubuntu base image provided by dotCloud
FROM ubuntu
MAINTAINER Luiz Guilherme da Silva Junior, luizguilhermesj00@gmail.com

# make sure the package repository is up to date
RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" > /etc/apt/sources.list
RUN apt-get update

# install java jdk
RUN apt-get -y install openjdk-6-jdk

# bundle solr source
ADD solr /solr

# Launch solr when launching the container
ENTRYPOINT cd /solr && java -Dsolr.solr.home=. -jar start.jar

# expose memcached port
EXPOSE 8081
