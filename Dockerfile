#1. To fetch base image in container
FROM openjdk:17-jdk-alpine

#2. Create working directory inside container
WORKDIR /app

#3. Copy code files from host to container directory
COPY /src/Main.java /app/Main.java
COPY  quotes.txt quotes.txt

#4. Compile the java code
RUN javac Main.java

#5. Expose port 8080 for HTTP server
EXPOSE 8001

#6. Run application when container starts
CMD ["java", "Main"]
