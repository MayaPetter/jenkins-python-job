# jenkins-python-job

Build:
make up REPO_URL=https://path/to/repo

for example: 
make up REPO_URL=https://github.com/MayaPetter/jenkins-python-job

Few improvements I would add with more time:

1. Configuring Git webhook to send an events to Jenkins- 
   Jenkins is configured to listen to events from $REPO_URL 
   The remote repo should be configured to send events to the Jenkins server via webhook, 
   post-commit script or an app - depending on the Git provider.
   Didn't have much time to investigate how to configure the webhook automatically, 
   although I'm sure there is a way.

2. Add a utility such as ngrok for the webhook, since the Jenkins server should have public IP.

3. Add an SSL/TLS certificate for HTTPS connection to Jenkins.

4. Add users authentication and matrix-based security in Jenkins
