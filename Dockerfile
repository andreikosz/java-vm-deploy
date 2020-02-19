FROM openjdk:11
RUN mkdir -p ~/java-app
RUN ls .
ADD /app-folder /java-app
WORKDIR /java-app
ENTRYPOINT ["sh", "-c"]
RUN chmod +x ./build/libs/spring-boot-app.jar
CMD ["java -jar ./build/libs/spring-boot-app.jar"]
