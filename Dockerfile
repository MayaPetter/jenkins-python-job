FROM jenkins/jenkins:lts-jdk11

USER root

RUN apt-get update && apt-get install -y python3-pip

ARG jenkins=jenkins:jenkins
ARG ref=/usr/share/jenkins/ref
ARG jenkins_home=/var/jenkins_home

#self assigned certificate
COPY  --chown=$jenkins jenkins-ssl/jenkins.key jenkins-ssl/jenkins.crt ${jenkins_home}/cert/

#Update Jenkins plugins and admin signin
COPY --chown=$jenkins plugins.txt ${ref}/
RUN jenkins-plugin-cli -f ${ref}/plugins.txt
RUN echo 2.0 > ${ref}/jenkins.install.UpgradeWizard.state

#copy jenkins and jobs configurations
COPY --chown=$jenkins config.xml ${jenkins_home}/
COPY --chown=$jenkins jobs ${ref}/jobs/
COPY --chown=$jenkins main.py ${ref}/jobs/python-job/workspace/

USER jenkins
