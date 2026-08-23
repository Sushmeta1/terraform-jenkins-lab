pipeline {
    agent any

    stages {
        stage('Test AWS Credentials') {
            steps {
                withCredentials([usernamePassword(
                    credentialsId: 'aws-credentials',
                    usernameVariable: 'AWS_ACCESS_KEY_ID',
                    passwordVariable: 'AWS_SECRET_ACCESS_KEY'
                )]) {
                    bat '''
                        echo AWS credentials loaded successfully
                        aws sts get-caller-identity
                    '''
                }
            }
        }
    }
}
