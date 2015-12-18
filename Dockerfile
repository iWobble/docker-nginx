FROM fedora

MAINTAINER Jared Mashburn "jmashburn@iwobble.com"

RUN dnf -y update && dnf clean all
RUN dnf -y install nginx && dnf clean all
RUN rm -rf /usr/share/nginx/html && mkdir /usr/share/nginx/html
RUN echo "Nginx container" > /usr/share/nginx/html/index.html

ADD nginx.conf /etc/nginx/nginx.conf
ADD default.conf /etc/nginx/conf.d/default.conf

EXPOSE 80

CMD ["/usr/sbin/nginx" ]

 

