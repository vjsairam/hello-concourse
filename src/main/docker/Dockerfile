FROM frolvlad/alpine-oraclejdk8:slim

ADD entrypoint.sh /entrypoint.sh
ADD build/libs/hello-concourse-0.0.1-SNAPSHOT.jar /app/

RUN apk --update add tzdata && ln -sf /usr/share/zoneinfo/Europe/Zurich /etc/localtime
RUN chmod a+x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
