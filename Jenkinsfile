pipeline {
	agent any
	stages {
		stage ('Build Docker image') {
			steps {
				sh 'sudo -n docker build -t 7243/javaimage .'
			}
		}
		stage ('Push docker image') {
			steps {
			    withCredentials([string(credentialsId: 'docker-pwd', variable: 'DockerHubPwd')]) {
                    sh "sudo -n docker login -u 7243 -p ${DockerHubPwd}"
                }
				sh 'sudo -n docker push 7243/javaimage'
			}
		}
		stage ('Pull docker image') {
			steps {
				echo "sudo -n docker pull 7243/javaimage";
			}
		}
	}
	post {
		success {
			echo "This will run if successful";
		}
		failure {
			echo "This will run if failed";
		}
		unstable {
			echo "This will run if run status is unstable";
		}
		changed {
			echo "This will run if state of pipeline is changed";
		}
	}
}