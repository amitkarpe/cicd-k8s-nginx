FROM nginx:1.16-alpine
RUN apk add --no-cache curl
WORKDIR /usr/share/nginx/html/
COPY index.html .
COPY work.png .
EXPOSE 80
