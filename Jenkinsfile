// FIXME
properties([
    buildDiscarder(logRotator(numToKeepStr: '5')),
    disableConcurrentBuilds(),
    [$class: 'GithubProjectProperty', projectUrlStr: 'https://github.com/MayaPetter/jenkins-python-job/'],
    pipelineTriggers([[$class: 'PeriodicFolderTrigger', interval: '1d']])
])


timestamps {
    // node(nodeLabel) {
    node {
        checkout scm
        sh '''
            python3 -m venv .venv
            . .venv/bin/activate
//             pip3 install -r requirements.txt
            python3 main.py
        '''

    }
 }
