pipeline {
    agent any
    tools {
        maven 'apache-maven-3.6.1'
    }
    stages {
        stage('Build') {
            steps {
                sh 'mvn clean package -DskipTests=true'
            }
        }
        stage('Docker Build') {
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