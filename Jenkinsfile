pipeline {
    agent any

    stages {
        /*stage('cloning project') {
            steps {
                sh 'git clone https://github.com/AshuRana31/Django_Dockerfiles.git'
                echo 'cloning..'
            }
        }*/
        stage('building image of dockerfile') {
            steps {
                sh ' sudo docker build -t harshita19/imageharshita19:django . '
                echo 'building image'
            }
        }
      /*  stage('building container') {
            steps {
                sh 'sudo docker run -p 8080:8080' 
            }
        } */
        stage('pushing image on docker hub') {
            steps {
              
                 script {
    withDockerRegistry([credentialsId: "harshi19", url: "https://registry.hub.docker.com"]) {
        sh 'docker push harshita19/imageharshita19:django'
    
  } 
              /*  
                sh ' sudo docker login -u harshita19 --password-stdin '
                sh ' sudo docker push harshita19/imageharshita19:django '
                echo 'pushing image on docker hub....'
            */
            }
        }
        
    }
}
}
    
