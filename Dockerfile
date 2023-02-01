FROM adoptopenjdk:11

WORKDIR /carina-demo

FROM maven
COPY pom.xml ./
RUN mvn dependency:resolve

COPY src ./src

CMD ["mvn", "test", "-Dsuite=api"]