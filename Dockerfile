FROM ubuntu:latest

RUN apt-get update
RUN apt install curl -y

ADD entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]