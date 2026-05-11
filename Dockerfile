FROM maven
COPY . .
RUN mvn package
RUN mv target/*.jar app.jar
CMD ["java","-jar","app.jar"]
EXPOSE 9090
