pipeline
{
  agent any
  environment 
  {
    credential = "prachijain/firsttry"
  }
  stages
  {
    stage("Build")
    {
      steps
      {
        sh 'echo "Building"'
        sh 'sudo docker build -t prachijain/firsttry:djangoimage .'
      }
    }
    stage("Push Image ")
    {
      steps
      {
        sh 'echo "Pushing images"'
        sh 'sudo chmod 666 /var/run/docker.sock'
        withDockerRegistry([ credentialsId: "Dockerhub_credential", url: "https://registry.hub.docker.com" ])
        {
          sh 'sudo docker push prachijain/firsttry:djangoimage '
        }
      }
    }
  }
 }
