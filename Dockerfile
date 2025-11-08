FROM tomcat:10.1.28-jdk21
RUN rm -rf /usr/local/tomcat/webapps/*
COPY dist/el1-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war
RUN touch /usr/local/tomcat/conf/ca.pem  # Tạo file trống thay vì COPY
ENV JAVA_OPTS="-Djavax.net.ssl.trustStore=/usr/local/tomcat/conf/ca.pem -Djavax.net.ssl.trustStorePassword=changeit"
EXPOSE 8080
CMD ["catalina.sh", "run"]