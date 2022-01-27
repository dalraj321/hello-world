FROM centos
RUN yum install java -y
RUN mkdir /opt/tomcat/
WORKDIR /opt/tomcat
ADD https://dlcdn.apache.org/tomcat/tomcat-10/v10.0.16/bin/apache-tomcat-10.0.16.tar.gz /opt/tomcat
RUN tar -xzvf apache-tomcat-10.0.16.tar.gz
RUN mv apache-tomcat-10.0.16/* /opt/tomcat 
EXPOSE 8088
CMD ["/opt/tomcat/bin/catalina.sh", "run"]

#FROM tomcat:latest
#RUN cp -R  /usr/local/tomcat/webapps.dist/*  /usr/local/tomcat/webapps
#COPY ./*.war /usr/local/tomcat/webapps
#RUN pwd

