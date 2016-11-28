FROM openjdk:8-jre-alpine
ENV GLIBC_VERSION=2.23-r3
ENV GLIBC_APK=glibc-$GLIBC_VERSION.apk
ENV GLIBC_BIN_APK=glibc-bin-$GLIBC_VERSION.apk
ENV GLIBC_i18n_APK=glibc-i18n-$GLIBC_VERSION.apk

COPY .ssh/sgerrand.rsa.pub /etc/apk/keys/sgerrand.rsa.pub
COPY glibc/$GLIBC_APK .
COPY glibc/$GLIBC_BIN_APK .
COPY glibc/$GLIBC_i18n_APK .
RUN apk add --no-cache --allow-untrusted $GLIBC_APK $GLIBC_BIN_APK $GLIBC_i18n_APK

COPY github.com/elastic/beats/filebeat/filebeat /usr/bin/filebeat
COPY etc/filebeat.yml /etc/filebeat.yml
COPY github.com/elastic/beats/filebeat/filebeat.template.json /filebeat.template.json
COPY github.com/elastic/beats/filebeat/filebeat.template-es2x.json /filebeat.template-es2x.json

ENTRYPOINT ["/usr/bin/filebeat" "-c" "/etc/filebeat.yml" "-e" ]

