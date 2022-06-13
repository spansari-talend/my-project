#This is a sample Image
#FROM ubuntu
#RUN apt-get update
#RUN apt-get install –y nginx
#CMD [“echo”,”Image created”]
# Get the base image

FROM ubuntu:16.04

# Install all packages

RUN \

apt-get update && \

apt-get -y upgrade && \

apt-get install -y apache2 && \

# adding some content for Apache server

RUN echo "This is a test docker" > /var/www/html/index.html

# Copying setting file & adding some content to be served by apache

COPY data/httpd.conf /etc/apache2/httpd.conf

# Defining a command to be run after the docker is up

ENTRYPOINT ["elinks"]

CMD ["localhost"]
