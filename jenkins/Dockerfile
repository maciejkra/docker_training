FROM jenkins/jenkins
USER root
RUN curl -fsSL get.docker.com -o get-docker.sh
RUN sh get-docker.sh
RUN usermod -aG docker jenkins
#USER jenkins
