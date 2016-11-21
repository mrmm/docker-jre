FROM alpine:3.4
MAINTAINER mr.maatoug@gmail.com

ENV JAVA_HOME=/usr/lib/jvm/default-jvm/jre

RUN apk upgrade --update-cache; \
    apk add openjdk8-jre; \
    rm -rf /tmp/* /var/cache/apk/*

#CMD export VERSION=$(java -version 2>&1 |awk 'NR==1{ gsub(/"/,""); print $3 }')
#ENV JRE_VERSION=$(java -version 2>&1 |awk 'NR==1{ gsub(/"/,""); print $3 }')

CMD ["java", "-version"]
