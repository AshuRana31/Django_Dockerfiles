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
    /*stage("Run")
    {
      steps
      {
        sh 'echo "Running the image" '
        sh 'sudo docker run -p 8000:8080 '
      }
    } */
    stage("Push Image ")
    {
      steps
      {
        sh 'echo "Pushing images"'
        //sh 'sudo docker login "${Dockerhub_credential}" '
        sh ' withDockereRegistry([credentialID:' prachijain', url : 'https://docker.io/prachijain '])
                             { sh 'sudo docker push prachijain/firsttry:djangoimage ' } '
      }
    }
  }
 }
