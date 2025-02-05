pipeline {
    agent any
    environment {
        DOCKER_USER = 'humarsdevops'
    }
    stages {
        stage('Clone Repo') {
            steps {
                git branch: 'dev', credentialsId: 'e01936316', url: 'https://github.com/e01936316/test.git'
            }
        }
        stage('Build Image') {
            steps {
                sh './builde.sh'
            }
        }
        stage('Push to Docker Hub') {
            steps {
                sh 'docker push $DOCKER_USER/dev:latest'
            }
        }
        stage('Deploy') {
            steps {
                sh './deploy.sh'
            }
        }
    }
}

