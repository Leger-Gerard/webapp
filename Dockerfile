FROM ubuntu
MAINTAINER leger
RUN apt update
RUN apt install -y nginx git
EXPOSE 7070 80
# Si vous voulez supprimer tous les fichiers du dossier /var/www/html/
RUN rm -rf /var/www/html/*
RUN git clone https://github.com/diranetafen/static-website-example.git /var/www/html/
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]

