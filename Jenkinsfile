pipeline {
	agent any
	stages {
		stage ('Compile') {
			steps {
				echo "Compiled successfully";
			}
		}
		stage ('Java') {
			steps {
				echo "Java passed successfully";
			}
		}
		stage ('Quality-Gate') {
			steps {
				echo "Quality gate passed successfully";
			}
		}
		stage ('Deploy') {
			steps {
				echo "Pass!!";
			}
		}
	}
	post {
		always {
			echo "This will always run";
		}
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