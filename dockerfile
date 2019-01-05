FROM centos
RUN yum update -y && yum install httpd -y
COPY . /var/www/html
CMD ["/usr/sbin/httpd","-D","FOREGROUND"]
EXPOSE 80
RUN echo "This is a test"
