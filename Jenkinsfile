pipeline {
    environment {
        TARGET_PATH     = '/home/apps/reverseproxy'
    }

    agent {
        docker {
            image 'maven:3-alpine'
            args '-v /root/.m2:/root/.m2'
        }
    }
    stages {
        stage('Deliver') {
            steps {
                sh 'chmod +x ./scripts/deliver.sh'
                sh './scripts/deliver.sh ${TARGET_PATH}'
            }
        }
    }
}