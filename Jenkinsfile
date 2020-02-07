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
	
	  stage ('---ssh---'){
		  steps{
			  sh "ssh -T -i /home/jenkins/FreezerProd.pem ubuntu@ec2-3-8-160-237.eu-west-2.compute.amazonaws.com ./buildFrontEnd.sh"
		  }
	  }	   
  }
}
