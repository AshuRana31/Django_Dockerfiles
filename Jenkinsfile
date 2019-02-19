pipeline
{
  agent any 
  stages
  {
    stage("Build")
    {
      steps
      {
        echo "Building"
        sudo docker build .
      }
    stage("Run")
    {
      steps
      {
        echo "Running the image 
        sudo docker run -p 8000:8080
      }
    }
    stage 
    {
      steps
      {
        echo "Pushing images"
        docker push
      }
    }
  }
 }
