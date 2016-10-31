FROM alpine
RUN apk update && \
    apk upgrade && \
    apk add --update --no-cache bash && \
    rm -rf /var/cache/apk/* && \
    sed -i -e "s/bin\/ash/bin\/bash/" /etc/passwd 

