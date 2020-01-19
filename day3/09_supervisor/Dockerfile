FROM ubuntu:latest
RUN apt-get update && apt-get install -y supervisor ssh apache2
RUN mkdir -p /var/log/supervisor && mkdir /var/run/sshd
COPY templates/ /
CMD /usr/bin/supervisord --nodaemon
