pipeline {
	
  agent any
  stages {
   stage('----Build Image For Front End----'){
    steps{
	   sh "docker build -t freezer-fe ." 
    }
   }
	  
   stage('----Push to dockerhub----'){
	   steps{
		sh "docker login --username=rebekahzoe "
		sh "docker push rebekahzoe/freezerapp"
	   }
   }
		   
  }
}
