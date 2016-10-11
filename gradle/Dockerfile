FROM openjdk:8-jdk-alpine
ENV PATH /var/lib/gradle-3.1/bin:$PATH 
RUN apk add --update --no-cache bash unzip libstdc++
COPY gradle-3.1-bin.zip /var/lib
RUN unzip /var/lib/gradle-3.1-bin.zip -d /var/lib
RUN rm /var/lib/gradle-3.1-bin.zip
CMD ["date"]

