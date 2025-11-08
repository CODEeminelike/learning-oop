FROM tomcat:10.1.28-jdk21
RUN rm -rf /usr/local/tomcat/webapps/*
COPY dist/el1-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war
COPY ca.pem /usr/local/tomcat/conf/ca.pem
ENV JAVA_OPTS="-Djavax.net.ssl.trustStore=/usr/local/tomcat/conf/ca.pem -Djavax.net.ssl.trustStorePassword=changeit -Djavax.net.ssl.trustStoreType=PEM"
EXPOSE 8080
CMD ["catalina.sh", "run"]