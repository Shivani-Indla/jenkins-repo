pipeline {
    agent {
        label 'Agent-1'
    }
    stages {
        stage('Build') {
            steps {
                sh 'echo Hi this is my build'
            }
        }
        stage('Test') {
            steps {
                sh 'echo Hi this is my Test'
            }
        }
        stage('Deploy') {
            steps {
                sh 'echo Hi this is my Deploy'
            }
        }
    }
}