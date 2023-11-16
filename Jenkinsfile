pipeline {
    agent any
    environment { 
3
        registry = "yasineromdhane/projetdevops" 
4
        registryCredential = 'yasineromdhane' 
5
        dockerImage = '' 
6
    }

    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }

        stage('Build Angular Frontend') {
            steps {
                script {
                    // Install npm dependencies
                    sh 'npm install'

                    // Build the Angular application
                    sh 'npm run build'
                }
            }
        }

        stage('Build Docker Image') {
            steps {
                script {
                    dockerimage = docker.build registry + ":$BUILD_NUMBER"
                }
            }
        }

        stage('Deploy our image') { 
            steps { 
                script { 
                    docker.withRegistry( '', registryCredential ) { 
                        dockerImage.push() 
                    }
                } 
            }
        } 

    }

  
}
