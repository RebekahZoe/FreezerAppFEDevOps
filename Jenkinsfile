pipeline {
	
  agent any
  stages {
	  
	  
	  
   stage('----Build Image For Front End----'){
    steps{
	   sh "docker build -t rebekahzoe/freezerapp:latest ." 
    }
   }
	  
   stage('----Push to dockerhub----'){
	   steps{
		   
		withDockerRegistry([ credentialsId: "dockerhub", url: "" ]) {
		sh "docker push rebekahzoe/freezerapp:latest"
		}
	   }
   }
	  stage ('---ssh---'){
		  steps{
			  sh "ssh -T -i /home/jenkins/freezerTest.pem ubuntu@ec2-35-178-174-26.eu-west-2.compute.amazonaws.com ./frontend.sh"
			  sh "ssh -T -i /home/jenkins/freezerTest.pem ubuntu@ec2-35-178-174-26.eu-west-2.compute.amazonaws.com ./seleniumscript.sh"
		  }
	  }
		   
  }
}
