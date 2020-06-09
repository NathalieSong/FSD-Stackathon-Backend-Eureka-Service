pipeline {
    agent any
    environment {
        PATH = "$PATH:/usr/local/bin"
    }
    tools {
        maven 'apache-maven-3.6.1'
    }
    stages {
        stage('Build') {
            steps {
                echo 'Building...'
                sh 'mvn clean package -DskipTests=true'
            }
        }
        stage('Docker Build') {
            steps {
                echo 'Docker Building...'
                sh 'docker-compose down'
                sh 'docker image rm emart-eureka-service'
                sh 'docker build . -t emart-eureka-service'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying...'
                sh 'docker-compose up -d'
            }
        }
    }
}