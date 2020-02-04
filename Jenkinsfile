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
		   
		withDockerRegistry([ credentialsId: "6544de7e-17a4-4576-9b9b-e86bc1e4f903", url: "" ]) {
		sh "docker push rebekahzoe/freezerapp:$BUILD_NUMBER"
		}
	   }
   }
		   
  }
}
