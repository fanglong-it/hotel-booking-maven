
FROM tomcat:9.0.1-jre8-alpine

COPY ./target/bookinghotel.war /usr/local/tomcat/webapps/hotel.war

EXPOSE 8080

CMD ["catalina.sh", "run"]