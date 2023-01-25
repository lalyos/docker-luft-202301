# multistage dockerfile

# build stage (temporal image)
FROM java:jdk AS build
COPY pom.xml src /app
RUN mvn package


# final image 
FROM java:jre
# copy from previous stage/img
COPY --from=build /app/target/app.jar /app
CMD [ "java", "-jar", "/app/app.jar" ]
