FROM ubuntu
MAINTAINER tycoon0049@gmail.com

RUN apt-get update && apt-get install -y apt-transport-https
RUN apt-get install -y vim
RUN mkdir work && cd work && echo "hello" >> t
