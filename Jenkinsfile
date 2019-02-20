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
        withDockerRegistry([ credentialsId: "Dockerhub_credential", url: "https://registry.hub.docker.com" ])
        {
          sh 'sudo docker push prachijain/firsttry:djangoimage '
        }
      }
    }
  }
 }
