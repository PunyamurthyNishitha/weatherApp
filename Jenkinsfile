pipeline {
    agent any

    environment {
        // Define any environment variables you need
        NODE_ENV = 'production'
    }

    stages {
        stage('Checkout') {
            steps {
                echo 'Checking out source code'
                checkout scm
            }
        }
        stage('Install Dependencies') {
            steps {
                echo 'Installing npm dependencies'
                // adjust if you use yarn or something else
                sh 'npm install'
            }
        }
        stage('Lint & Test') {
            steps {
                echo 'Running lint and tests'
                // If you have lint scripts or tests
                // sh 'npm run lint'
                // sh 'npm test'
                // For now a placeholder
                sh 'echo "No tests defined"'
            }
        }
        stage('Build') {
            steps {
                echo 'Building the application'
                // If your weatherApp is static html/js/css it may not require build
                // For example if you have a build step like webpack
                // sh 'npm run build'
                sh 'echo "Skipping build – simple static app"'
            }
        }
        stage('Archive/Artifact') {
            steps {
                echo 'Archiving artifacts'
                archiveArtifacts artifacts: '**/*', fingerprint: true
            }
        }
        stage('Deploy') {
            when {
                branch 'main'
            }
            steps {
                echo 'Deploying application'
                // Add your deploy steps here: copy files, push to server, etc.
                sh 'echo "Deploy logic here"'
            }
        }
    }

    post {
        always {
            echo 'Cleaning workspace'
            cleanWs()
        }
        success {
            echo 'Pipeline succeeded!'
        }
        failure {
            echo 'Pipeline failed!'
        }
    }
}

