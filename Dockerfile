FROM tomcat:8.5-jre8

# Remove the default Tomcat apps
RUN rm -rf /usr/local/tomcat/webapps/ROOT \
    && rm -rf /usr/local/tomcat/webapps/docs \
    && rm -rf /usr/local/tomcat/webapps/examples \
    && rm -rf /usr/local/tomcat/webapps/host-manager \
    && rm -rf /usr/local/tomcat/webapps/manager

# Copy your Servlet/JSP WAR file into Tomcat's webapps directory
COPY ./target/bookinghotel.war /usr/local/tomcat/webapps/
COPY ./target/bookinghotel /usr/local/tomcat/webapps/

EXPOSE 8080
