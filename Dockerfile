FROM centos
RUN  yum update -y && yum install httpd -y
COPY . /var/www/html/
ENTRYPOINT ["/usr/sbin/httpd", "-D", "FOREGROUND" ]
