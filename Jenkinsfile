pipeline {
    agent any

    stages {
        stage('cloning project') {
            steps {
                sh 'git clone https://github.com/AshuRana31/Django_Dockerfiles.git'
                echo 'cloning..'
            }
        }
        stage('building image of dockerfile') {
            steps {
                sh 'sudo docker build .'
                echo 'building image'
            }
        }
        stage('building container') {
            steps {
                sh 'sudo docker run -p 10000:8080 -ti -v /var/run/docker.sock:/var/run/docker.sock -v $(which docker):/usr/bin/docker 61afb0ac218f '
                echo 'building container....'
            }
        }
        stage('pushing image on docker hub') {
            steps {
                sh 'docker push harshita19/imageharshita19:firstimage'
                echo 'pushing image on docker hub....'
            }
        }
        
    }
}
