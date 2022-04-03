pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
              echo "Cloning the source code from git........" 
            }
        }
        stage('compile') {
            steps {
               echo "Compiling the application........" 
            }
        }
        stage('build') {
            steps {
               echo "Building the application........"
            }
        }
        stage('test') {
            steps {
              echo "Testing the application........" 
            }
        }
        stage('package') {
            steps {
               echo "Packaging the application........"
            }
        }
        stage('deploy') {
            steps {
               echo "Deploying the application........"
            }
        }
    }
    post {
        success {
            slackSend baseUrl: 'https://hooks.slack.com/services/',
            channel: 'pipeline-test', 
            color: '#BDFFC3', 
            message: 'Project Name : ' + JOB_NAME + ' \n Build Status : Build number ' + currentBuild.displayName + ' finished with status: SUCCESS ===> GOOD JOB GUYS! \n Description : ' + currentBuild.description + '\n Build URL : ' + BUILD_URL, 
            teamDomain: 'Devops easy learning', 
            tokenCredentialId: 'Slack-Token-For-Incoming-Webhooks'
        }
        failure {
            slackSend baseUrl: 'https://hooks.slack.com/services/',
            channel: 'pipeline-test', 
            color: '#FF9FA1', 
            message: 'Project Name : ' + JOB_NAME + ' \n Build Status : Build number ' + currentBuild.displayName + ' finished with status: FAILED ===> Please check the console output to fix this job IMMEDIATELY ===> THANKS. \n Description : ' + currentBuild.description + '\n Build URL : ' + BUILD_URL, 
            teamDomain: 'Devops easy learning', 
            tokenCredentialId: 'Slack-Token-For-Incoming-Webhooks'
        }
        unstable {
            slackSend baseUrl: 'https://hooks.slack.com/services/',
            channel: 'pipeline-test', 
            color: '#FFFE89', 
            message: 'Project Name : ' + JOB_NAME + ' \n Build Status : Build number ' + currentBuild.displayName + ' finished with status: UNSTABLE ===> Please check the console output to fix this job IMMEDIATELY ===> THANKS. \n Description : ' + currentBuild.description + '\n Build URL : ' + BUILD_URL, 
            teamDomain: 'Devops easy learning', 
            tokenCredentialId: 'Slack-Token-For-Incoming-Webhooks'
        }
        
    }
}
