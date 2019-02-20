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
        // sh 'sudo docker login -u="prachijain" -p="prachi11" '
        withDockerRegistry([ credentialsId: "Dockerhub_credential", url: "" ])
        {
          sh 'sudo docker push prachijain/firsttry:djangoimage '
        }
      }
    }
  }
 }
