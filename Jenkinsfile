pipeline {
	
  agent any
  stages {
	  
	  
	  
   stage('----Build Image For Front End----'){
    steps{
	   sh "docker build -t rebekahzoe/freezerappprod:latest ." 
    }
   }
	  
   stage('----Push to dockerhub----'){
	   steps{
		   
		withDockerRegistry([ credentialsId: "dockerhub", url: "" ]) {
		sh "docker push rebekahzoe/freezerappprod:latest"
		}
	   }
   }
		   
  }
}
