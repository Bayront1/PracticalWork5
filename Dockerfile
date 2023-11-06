FROM ubuntu:latest

RUN apt-get update && apt-get install -y \
    x11-apps \
    xauth \
    openjdk-11-jdk

RUN rm -rf /var/lib/apt/lists/*

ENV DISPLAY=:0

COPY calc.jar /app/calc.jar

WORKDIR /app

CMD ["java", "-jar", "calc.jar"]

