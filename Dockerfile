FROM ubuntu 
ENV DEBIAN_FRONTEND=noninteractive
WORKDIR /var/www/html
RUN apt-get update && \
    apt-get install -y apache2 && \
    apt-get clean && \
    rm -rf /var/www/html/*
COPY . /var/www/html/
EXPOSE 80
CMD ["apachectl", "-D", "FOREGROUND"]