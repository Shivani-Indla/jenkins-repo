pipeline {
    agent any
    options {
        skipStagesAfterUnstable()
    }
    stages {
        stage('Build') {
            steps {
                sh 'echo This is my Build'
            }
        }
        stage('Test'){
            steps {
                sh 'echo This is my Test'
            }
        }
        stage('Deploy') {
            steps {
                sh 'echo This is my Deploy'
            }
        }
    }
}