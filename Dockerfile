#This is a sample Image
FROM ubuntu:latest
LABEL maintainer="sameer"
RUN apt-get update && apt-get upgrade -y
RUN apt-get install nginx -y
EXPOSE 80
#CMD [“echo”,”Image created”]
CMD ["nginx", "-g", "daemon off;"]
