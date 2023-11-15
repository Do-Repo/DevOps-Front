pipeline {
    agent any

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

    }

  
}
