FROM  centos:latest
MAINTAINER sujethapai@gmail.com
RUN  sed -i 's/mirrorlist/#mirrorlist/g' /etc/yum.repos.d/CentOS-* && \
     sed -i 's|#baseurl=http://mirror.centos.org|baseurl=http://vault.centos.org|g' /etc/yum.repos.d/CentOS-*
RUN yum -y update  && \
    yum -y install httpd && \ 
    yum install zip -y && \
    yum install unzip -y
ADD https://www.free-css.com/assets/files/free-css-templates/download/page290/wave-cafe.zip /var/www/html/

WORKDIR /var/www/html/
RUN unzip wave-cafe.zip
RUN cp -rvf wave-cafe/* .
RUN rm -rf wave-cafe wave-cafe.zip
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
