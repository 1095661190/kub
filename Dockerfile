FROM Ubuntu:14.04
MAINTAINER Chris Chan "chenx1242@163.com"
ENV REFRESHED_AT 2016-12-05
RUN apt-get -y update && apt-get install -y nginx
RUN mkdir -p /var/www/html/website
ADD nginx/global.conf /etc/nginx/conf.d/
ADD nginx/nginx.conf /etc/nginx/nginx.conf
EXPOSE 80
