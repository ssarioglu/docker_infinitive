#A simple dockerfile for running infinitive
FROM alpine:edge
MAINTAINER Serdar.Sarioglu@mysystem.org

RUN apk update
RUN apk add bash

ENV command echo run your command

CMD ["bash", "-c", "Echo running (in background) task: ${command} && while true; do ${command}; done "]
