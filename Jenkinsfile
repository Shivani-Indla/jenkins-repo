
pipeline {
    agent{
        label 'Agent-1'
    }
    options {
        timeout(time: 30, unit: 'MINUTES')
        disableConcurrentBuilds()
        ansiColor('xterm')
    }
    parameters {
        string(name: 'Person', defaultValue: 'staging', description: 'Who should i say')
        text(name: 'Biography', defaultValue: '', description: 'Enter some info about you')
        booleanParam(name: 'Toggle', defaultValue: true, description: 'Toggle this value')
        choice(name: 'CHOICES', choices: ['one', 'two', 'three'], description: 'Pick something')
        password(name: 'PASSWORD', defaultValue: 'SECRET', description: 'A secret password')
    }
    environment{
        AWS_ACCESS_KEY_ID = credentials('AWS_ACCESS_KEY_ID')
        AWS_SECRET_ACCESS_KEY = credentials('AWS_SECRET_ACCESS_KEY')
    }
    stages {
        stage('checkout') {
            steps {
                script {
                    git "https://github.com/Shivani-Indla/jenkins-repo.git"
                }
            }
        }
        stage ('Init') {
            steps {
                sh """
                terraform init -reconfigure
                """
            }
        }
        stage ('Plan') {
            steps {
                sh """

                """"""
            }
        }
        stage ('Deploy') {
            steps {
                sh 'echo This is Deploy stage'
            }
        }
    }
    post {
        always {
            echo "This will always run"
        }
        success {
            echo "This will run only if the pipeline is successful"
        }
        failure {
            echo "This will run only if the pipeline fails"
        }
    }
}
