FROM php:8.0-apache

LABEL maintainer = "Jonathan Cordoba"

WORKDIR /var/www/html

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)

COPY app .
# El primer punto incluye todos los archivos y carpetas que están en la misma ubicación del Dockerfile
# Y el segundo punto define que todos esos archivos serán desplegados en el WORKDIR definifo arriba

EXPOSE 80