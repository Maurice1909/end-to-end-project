pipeline {
    agent any

    environment {
        DOCKER_IMAGE_NAME = 'coffeeshop-app'
    }

    stages {
        stage('Checkout') {
            steps {
                git branch: 'main',
                    credentialsId: 'github_credentials',
                    url: 'https://github.com/Maurice1909/end-to-end-project.git'
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    def image = docker.build("${DOCKER_IMAGE_NAME}:${BUILD_ID}")
                }
            }
        }

        stage('Run Docker Container') {
            steps {
                script {
                    def image = docker.image("${DOCKER_IMAGE_NAME}:${BUILD_ID}")
                    image.run()
                }
            }
        }
    }
}
                             
                
                   
