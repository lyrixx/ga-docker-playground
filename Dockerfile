FROM nginx:latest as app_1

RUN date > /etc/build.txt

COPY index.html /usr/share/nginx/html/index.html

FROM nginx:latest as app_2

RUN date > /etc/build.txt

COPY index2.html /usr/share/nginx/html/index.html
