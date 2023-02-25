FROM jenkins/jenkins:2.392-jdk11

USER root

RUN apt-get update && apt-get install -y python3-pip

USER jenkins

#TODO
# COPY  configurations users and access/
# COPY main.py jobs
#RUN /usr/local/bin/install-plugins.sh
