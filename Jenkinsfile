pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'docker-compose down'
                sh 'docker image rm emart-eureka-service'
                sh 'docker build . -t emart-eureka-service'
            }
        }
        stage('Deploy') {
            steps {
                sh 'docker-compose up -d'
            }
        }
    }
}