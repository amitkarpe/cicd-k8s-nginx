# Connected with docker hub automated build
FROM nginx:1.17-alpine
RUN apk add --no-cache curl
WORKDIR /usr/share/nginx/html/
COPY index.html .
COPY work.png .
EXPOSE 80
