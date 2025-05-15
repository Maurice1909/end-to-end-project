pipeline {
    agent any

    environment {
        DOCKER_IMAGE_NAME = 'coffeeshop-app' // Name for your Docker image
    }

    stages {
        stage('Checkout') {
            steps {
                git credentialsId: 'github-credentials',
                    url: 'https://github.com/Maurice1909/end-to-end-project.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    docker.build("${env.DOCKER_IMAGE_NAME}:${env.BUILD_ID}") .
                            context('.')
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                script {
                    docker.run("${env.DOCKER_IMAGE_NAME}:${env.BUILD_ID}")
                }
            }
        }
    }
}
