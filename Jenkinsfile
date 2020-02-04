pipeline {
	
  agent any
  stages {
   stage('----Build Image For Front End----'){
    steps{
	   sh "docker build -t rebekahzoe/freezerapp:$BUILD_NUMBER ." 
    }
   }
	  
   stage('----Push to dockerhub----'){
	   steps{
		   
		withDockerRegistry([ credentialsId: "dockerhub", url: "" ]) {
		sh "docker push rebekahzoe/freezerapp:$BUILD_NUMBER"
		}
	   }
   }
		   
  }
}
