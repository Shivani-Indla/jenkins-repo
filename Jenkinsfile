pipeline {
    agent any
    options {
        skipStagesAfterUnstable()
    }
    stages {
        stage('Build') {
            steps {
                sh 'This is my Build'
            }
        }
        stage('Test'){
            steps {
                sh 'This is my Test'
            }
        }
        stage('Deploy') {
            steps {
                sh 'This is my Deploy'
            }
        }
    }
}