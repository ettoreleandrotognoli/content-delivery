FROM nginx:latest
ENV ORIGIN https://github.com/ettoreleandrotognoli/content-delivery.git
RUN apt update
RUN apt install -y git
CMD rm -rf /usr/share/nginx/html && git clone $ORIGIN /usr/share/nginx/html && nginx -g "daemon off;"