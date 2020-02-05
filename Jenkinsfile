pipeline {
	
  agent any
  stages {
	  stage('----nginx----'){
		  steps{
			  sh """echo 'events {}
				http {
				server {
        				listen 80 default_server;
        				root /FreezerAppFEDevOps;
        				index index.html;
        				include /etc/nginx/mime.types;
        				location / {
                				try_files $uri $uri/ =404;
        				}
					location /FreezerApplication {
						proxy_pass http://35.176.215.25:8080/;
					}
				}
			}' >nginx.conf"""
		  }
	  }
	  stage('----create dockerfile----'){
		  steps{
			  sh "touch Dockerfile"
			  sh """echo 'FROM nginx
				COPY . /FreezerAppFEDevOps
				COPY nginx.conf /etc/nginx/nginx.conf' > Dockerfile"""
		  }
	  }
	  
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
		   
  }
}
