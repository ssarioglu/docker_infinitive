#A simple dockerfile for running infinitive
FROM alpine:edge
MAINTAINER Serdar.Sarioglu@mysystem.org

RUN apk update
RUN apk add bash

ENV cmd echo Usage: docker run -e cmd=command -e count=5 ssarioglu/infinitive
ENV count 5 

CMD ["bash", "-c", "i=1 && while [ $i -le ${count} ]; do ${cmd}; i=$[$i+1]; done"] 
