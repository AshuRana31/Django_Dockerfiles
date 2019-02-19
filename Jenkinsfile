pipeline
{
  agent 
  {
    Dockerfile
  } 
  stages
  {
    stage("Build")
    {
      steps
      {
        sh 'echo "Building"'
        sh 'docker build .'
      }
    }
    stage("Run")
    {
      steps
      {
        sh 'echo "Running the image" '
        sh 'docker run -p 8000:8080'
      }
    }
    stage 
    {
      steps
      {
        sh 'echo "Pushing images"'
        sh 'docker push'
      }
    }
  }
 }
