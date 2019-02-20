pipeline {
    agent {dockerfile true}

    stages {
        /*stage('cloning project') {
            steps {
                sh 'git clone https://github.com/AshuRana31/Django_Dockerfiles.git'
                echo 'cloning..'
            }
        }*/
        stage('building image of dockerfile') {
            steps {
                sh 'sudo docker build .'
                echo 'building image'
            }
        }
        stage('building container') {
            steps {
                sh 'sudo docker run -p 8080:8080' 
            }
        }
        stage('pushing image on docker hub') {
            steps {
                sh 'sudo docker push harshita19/imageharshita19:firstimage'
                echo 'pushing image on docker hub....'
            }
        }
        
    }
}
