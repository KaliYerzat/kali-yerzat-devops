pipeline {
    agent any

    environment {
        STUDENT_NAME = 'Yerzat'
        STUDENT_SURNAME = 'Kali'
        STUDENT_GROUP = 'IT2-2301'
        STUDENT_ID = '38307'
    }

    stages {
        stage('Checkout') {
            steps {
                echo "Checking out source code from GitHub..."
                checkout scm
            }
        }
        stage('Build') {
            steps {
                echo "Building application for Student: ${STUDENT_NAME} ${STUDENT_SURNAME}"
                echo "Group: ${STUDENT_GROUP} | ID: ${STUDENT_ID}"
            }
        }
        stage('Test') {
            steps {
                echo "Running tests..."
                sh 'test -f Kali_Yerzat_info.txt'
            }
        }
        stage('Docker Build') {
            steps {
                echo "Building Docker image..."
                sh 'docker build -t kali-yerzat-devops .'
            }
        }
        stage('Docker Run') {
            steps {
                echo "Running Docker container..."
                sh 'docker run --rm kali-yerzat-devops'
            }
        }
    }
}
