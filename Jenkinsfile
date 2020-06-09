pipeline {
    agent any
    stages {
        stage('Build') {
            withMaven(maven: 'maven-3.6.1') {
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