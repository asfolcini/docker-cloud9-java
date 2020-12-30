# Cloud9 server for java dev
FROM sapk/cloud9:alpine
LABEL maintainer="Alberto Sfolcini <a.sfolcini@gmail.com>"

# Setting up environment 
#ENV http_proxy ''
#ENV https_proxy ''

RUN apk update
RUN apk fetch openjdk8
RUN apk add openjdk8
RUN apk --no-cache add maven git ca-certificates
ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
ENV PATH="$JAVA_HOME/bin:${PATH}"

RUN java -version
RUN javac -version


EXPOSE 8181
