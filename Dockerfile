FROM jenkins/jenkins:lts-jdk11

USER root

RUN apt-get update && apt-get install -y python3-pip



#TODO TLS/SSL
#COPY --chown=jenkins:jenkins certificate.pfx /var/lib/jenkins/certificate.pfx
#COPY --chown=jenkins:jenkins https.key /var/lib/jenkins/pk
#ENV JENKINS_OPTS --httpPort=-1 --httpsPort=8083 --httpsKeyStore=/var/lib/jenkins/certificate.pfx --httpsKeyStorePassword=Password12
#EXPOSE 8083
COPY --chown=jenkins:jenkins plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN jenkins-plugin-cli -f /usr/share/jenkins/ref/plugins.txt
RUN echo 2.0 > /usr/share/jenkins/ref/jenkins.install.UpgradeWizard.state
COPY --chown=jenkins:jenkins config.xml /var/jenkins_home/
COPY --chown=jenkins:jenkins python-job-config.xml /usr/share/jenkins/ref/jobs/python-job/config.xml
COPY --chown=jenkins:jenkins multi-branch-config.xml /usr/share/jenkins/ref/jobs/python-multi-branch/config.xml
#COPY --chown=jenkins:jenkins main.py /usr/share/jenkins/ref/workspace/python-job/
COPY --chown=jenkins:jenkins main.py /usr/share/jenkins/ref/jobs/python-job/workspace/

USER jenkins
