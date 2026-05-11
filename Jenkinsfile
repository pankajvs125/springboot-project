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
				sh "docker run -d -p 9090:9090"
			}
		}
	}
}

