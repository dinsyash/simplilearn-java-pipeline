FROM alpine:latest
Add src/TestJava.class src/TestJava.class
RUN apk --update add openjdk8-jre
WORKDIR src/
ENTRYPOINT ["java","-DJava.security.egd=file:/dev/./urandom","TestJava"]
