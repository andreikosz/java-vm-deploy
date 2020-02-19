FROM openjdk:11
RUN mkdir -p ~/java-app
RUN ls /var
ADD . /java-app
WORKDIR /java-app
ENTRYPOINT ["sh", "-c"]
RUN chmod +x ./build/libs/spring-boot-app.jar
CMD ["java -jar ./build/libs/spring-boot-app.jar"]
