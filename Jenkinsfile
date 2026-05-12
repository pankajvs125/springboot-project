pipeline{
	agent any
	stages{
		stage("Docker Image"){
			steps{
				sh "docker build -t springapp ."
			}
		}
		stage("Docker container"){
			steps{
				sh "docker run -d -p 9191:9090 springapp"
			}
		}
		stage("Image push to Docker hub"){
			steps{
				script{
					withDockerRegistry(credentialsId: '9ffd8be7-1f75-4913-80c1-81861b4b40df') {
						sh 'docker tag springapp pankajvs125/springapp:v$BUILD_ID'
						sh 'docker push pankajvs125/springapp:v$BUILD_ID'
					}
				}
			}
		}			
	}
}

