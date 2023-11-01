FROM maven:3.8.1-jdk-8-openj9 as build

COPY  pom.xml .

COPY src src

RUN mvn package

FROM tomcat:9.0.1-jre8-alpine as deploy

COPY --from=build ./target/bookinghotel.war /usr/local/tomcat/webapps/hotel.war

EXPOSE 8080

CMD ["catalina.sh", "run"]