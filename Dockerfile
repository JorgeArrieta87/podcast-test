FROM ubuntu:latest

RUN apt-get update && apt-get install -y \ python3.10 \ python3-pip \ python3-pip \ git

RUN pip3 install PyYAML

COPY index-html /usr/bin/index.html

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
