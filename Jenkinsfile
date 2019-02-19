pipeline
{
  agent any
  stages
  {
    stage("Build")
    {
      steps
      {
        sh 'echo "Building"'
        sh 'sudo docker build .'
      }
    }
    stage("Run")
    {
      steps
      {
        sh 'echo "Running the image" '
        sh 'sudo docker run -p 8000:8080 -v /var/lib/docker.sock:/var/lib/docker.sock '
      }
    }
    stage("Push Image ")
    {
      steps
      {
        sh 'echo "Pushing images"'
        sh 'sudo docker push'
      }
    }
  }
 }
