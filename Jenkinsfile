pipeline {
    agent any

    tools {
        jdk 'JAVA_HOME'
        maven 'M2_HOME'
    }

    stages {
        stage('GIT') {
            steps {
                git branch: 'main', url: 'https://github.com/salmaachour2/student-management',
                credentialsId: 'git-cred'
            }
        }

        stage('Compile Stage') {
            steps {
                sh 'mvn clean compile'
            }
        }
        stage('SonarQube Analysis') {
           steps {
                 withSonarQubeEnv('SonarQube') {
                      sh 'mvn sonar:sonar'
                  }
           }
        }

    }
}
