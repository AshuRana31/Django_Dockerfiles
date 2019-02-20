pipeline 
{
    agent any

    stages 
    {
        stage('building image of dockerfile') 
        {
            steps 
            {
                sh ' sudo docker build -t harshita19/imageharshita19:django . '
                echo 'building image'
            }
        }
        stage('pushing image on docker hub')
        {
            steps 
            {
                 sh 'echo "push image"'
                 sh ' sudo chmod 666 /var/run/docker.sock'
                 withDockerRegistry([credentialsId: "Dockerhub_credential", url: "https://registry.hub.docker.com"]) 
                {
                    sh 'docker push harshita19/imageharshita19:django'
    
                } 
            }
        }
        
    }
}

    
