properties([
    buildDiscarder(logRotator(numToKeepStr: '5')),
    disableConcurrentBuilds(),
    [$class: 'GithubProjectProperty', projectUrlStr: 'https://github.com/MayaPetter/jenkins-python-job/'],
    pipelineTriggers([[$class: 'PeriodicFolderTrigger', interval: '1d']])
])


timestamps {
    // node(nodeLabel) {
    node {
        stage('checkout'){
            checkout scm
        }
        stage('describe DevOps'){
            sh "python3 main.py"
        }
    }
 }
