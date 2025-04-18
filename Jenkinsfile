pipeline {
    agent {
        label 'Agent-1'
    }
    stages {
        stage('Build') {
            steps {
                sh 'echo Hi this is shiva Build in Agent-1'
            }
        }
        stage('Test') {
            steps {
                sh 'echo Hi this is shiva Test in Agent-1'
            }
        }
        stage('Deploy') {
            steps {
                sh 'echo Hi this is shiva Deploy in Agent-1 test'
            }
        }
    }
}
