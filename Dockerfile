FROM centos
MAINTAINER Kentaro Kentaro

#RUN :executed when build
#RUN echo "now building..."

#CMD :executed when run
#CMD ["echo", "now running..."]

RUN yum install -y httpd
ADD ./index.html /var/www/html/
EXPOSE 80
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
