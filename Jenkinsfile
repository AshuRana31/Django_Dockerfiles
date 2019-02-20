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
        script 
        {
          sh 'sudo docker build .'
          image = docker.build("${IMAGE}")
          sh 'echo "Image id is " + image.id'
        }
      }
    }
    stage("Run")
    {
      steps
      {
        sh 'echo "Running the image" '
        sh 'sudo docker run -p 8000:8080 '
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
