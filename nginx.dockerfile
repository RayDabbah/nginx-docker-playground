FROM ubuntu:latest

ENV DEBIAN_FRONTEND=noninteractive


RUN apt-get -y update && apt-get -y install nginx vim less 

CMD ["/usr/sbin/nginx", "-g", "daemon off;"]



