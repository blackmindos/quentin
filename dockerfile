FROM alpine
RUN apk --no-cache upgrade
RUN apk add --no-cache apache2
ENV MSG "Hello Wolrd !!"
RUN apk update && apk upgrade && apk add bash
WORKDIR /opt
EXPOSE 80
CMD ["-D","FOREGROUND"]
ENTRYPOINT ["/usr/sbin/httpd"]
