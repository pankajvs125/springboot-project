pipeline{
	agent any
	stages{
		stage("Docker Image"){
			steps{
				sh "docker build -t springapp:v1 ."
			}
		}
		stage("Docker container"){
			steps{
				sh "docker run -d -p 9000:9090 springapp:v1"
			}
		}
		stage("Image push to Docker hub"){
			steps{
				script{
					withDockerRegistry(credentialsId: '9ffd8be7-1f75-4913-80c1-81861b4b40df') {
						sh 'docker push pankajvs125/springapp:v$BUILD_ID'
					}
				}
			}
		}			
	}
}

