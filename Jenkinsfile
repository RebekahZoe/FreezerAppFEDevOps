pipeline {
	environment{
		registry = "rebekahzoe/freezerapp"
		registryCredential = 'dockerhub'
		dockerImage =''
	}
  agent any
  stages {
   stage('----Build Image For Front End----'){
    steps{
      dockerImage = sh "docker build -t freezer-fe ."
	    
    }
   }
	  
   stage('----Push to dockerhub----'){
	   steps{
		   script{
			   docker.withregistry( '', registryCredential){
				   dockerImage.push()
			   }
		   }
	   }
   }
		   
 }
}
