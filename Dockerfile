FROM nginx:1.22-alpine as app_1

RUN date > /etc/build.txt

COPY index.html /usr/share/nginx/html/index.html

FROM nginx:1.22-alpine as app_2

RUN date > /etc/build.txt

COPY index2.html /usr/share/nginx/html/index.html
