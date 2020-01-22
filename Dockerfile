
FROM gradle:4.2.1-jdk8-alpine
RUN ls .
FROM openjdk:8
ARG artifact
ENV artifact_name ${artifact}
COPY ./build/libs/ .
WORKDIR .
RUN ls .
EXPOSE 8080
ENTRYPOINT ["sh", "-c"]
RUN chmod +x ${artifact_name}
CMD ["java -jar ${artifact_name}"]

