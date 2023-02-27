# jenkins-python-job

Build:
Make up REPO_URL=https://path/to/repo/

for example: 
Make up REPO_URL=https://github.com/MayaPetter/jenkins-python-job/

Few issues:
1. Configuring Git webhook to send an events to Jenkins- 
   Jenkins is configured to listen to events from $REPO_URL 
   The remote repo should be configured to send events to the Jenkins server via webhook, 
   post-commit script or an app - depending on the Git provider.
   Didn't had much time to investigate how to configure the webhook automatically, 
   although I'm sure there is one.
   
   For a webhook, the Jenkins server should have public IP- need to use a utility such as ngrok.
         
3. I would add an SSL/TLS certificate for HTTPS connection to jenkins.
4. I would add users authentication and Metrix-based security in Jenkins
