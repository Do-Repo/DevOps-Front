pipeline {
    agent any
    environment { 
        registry = "yasineromdhane/projetdevops" 
        registryCredential = 'yasineromdhane' 
        dockerImage = '' 
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
