#FROM httpd
#COPY . /usr/local/apache2/htdocs
FROM ubuntu:latest
RUN apt-get update && apt-get install -y wget
WORKDIR /app
RUN wget https://www.free-css.com/assets/files/free-css-templates/download/page296/healet.zip
RUN apt-get install -y unzip
RUN unzip healet.zip
RUN rm -rf healet.zip
