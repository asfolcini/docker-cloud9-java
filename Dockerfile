# Cloud9 server for java dev
FROM sapk/cloud9:alpine
LABEL maintainer="Alberto Sfolcini <a.sfolcini@gmail.com>"

# Setting up environment 
#ENV http_proxy ''
#ENV https_proxy ''

RUN apk -U --no-cache --force --no-progress add openJDK maven git

ENV JAVA_HOME=/usr/lib/jvm/java-1.8-openjdk
ENV PATH="$JAVA_HOME/bin:${PATH}"

RUN java -version
RUN javac -version


EXPOSE 8181
