FROM ubuntu:latest
RUN apt update
RUN apt install apache2 -y

COPY html /var/www/html

RUN date -u > /var/www/html/buildtime.txt

CMD service apache2 start && sleep infinity
