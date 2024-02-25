FROM httpd
COPY . /usr/local/apache2/htdocs
#FROM ubuntu:latest
#RUN apt-get update && apt-get install -y wget && apt-get install -y apache2
#WORKDIR /app
#RUN wget https://www.free-css.com/assets/files/free-css-templates/download/page296/healet.zip
#RUN apt-get install -y unzip
#RUN unzip healet.zip
#RUN rm -rf healet.zip
#RUN cp -Rf ./healet-html/* .
#RUN rm -rf healet-html
#RUN . /var/www/html
