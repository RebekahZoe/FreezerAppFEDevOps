pipeline {
	
  agent any
  stages {
   stage('----Build Image For Front End----'){
    steps{
	   sh "docker build -t rebekahzoe/freezerapp ." 
    }
   }
	  
   stage('----Push to dockerhub----'){
	   steps{
		sh "docker push rebekahzoe/freezerapp"
	   }
   }
		   
  }
}
