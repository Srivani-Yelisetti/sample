FROM ubuntu:latest
RUN apt-get update
RUN apt-get install nginx -y
EXPOSE 80
COPY index.html /var/www/html/index.html
CMD ["nginx", "-g", "daemon off;"]
