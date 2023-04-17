FROM  centos:latest
MAINTAINER sujethapai@gmail.com
RUN  sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-* && \
     sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*
RUN yum -y update  && \
    yum -y install httpd && \ 
    yum install zip -y && \
    yum install unzip -y
ADD https://www.free-css.com/assets/files/free-css-templates/download/page1/academic-education.zip /var/www/html/

WORKDIR /var/www/html/
RUN unzip academic-education.zip
RUN cp -rvf academic-education/* .
RUN rm -rf academic-education academic-education.zip
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
 
 
# FROM  centos:latest
# MAINTAINER vikashashoke@gmail.com
# RUN yum install -y httpd \
#  zip\
#  unzip
# ADD https://www.free-css.com/assets/files/free-css-templates/download/page265/shine.zip /var/www/html/
# WORKDIR /var/www/html/
# RUN unzip shine.zip
# RUN cp -rvf shine/* .
# RUN rm -rf shine shine.zip
# CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
# EXPOSE 80   
