#FROM devopsedu/webapp
FROM ubuntu:18.04
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update
RUN apt-get install git -y
RUN apt-get install php -y
RUN git clone https://github.com/edureka-devops/projCert.git
WORKDIR /projCert/website
EXPOSE 80
EXPOSE 22
ENTRYPOINT ["php", "-S", "0.0.0.0:80"]
#CMD apachectl -D FOREGROUND