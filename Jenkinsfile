pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
		echo "Service_PORT=${Service_PORT}"
		echo "Docker_PORT=${Docker_PORT}" 
	        echo 'Running build automation'            }
        }
         stage('Build Docker Image') {
           
            steps {
		echo 'Image starts'
                script {
		        sh 'ls -la'
			sh'rm -rf src/'

                    sh 'git clone https://github.com/linuxacademy/content-weather-app.git src'
		
			 sh 'ls -la'
		    sh 'docker image build -t linuxacademy/weather-app:v25 .'
                    sh 'docker container run -d --name weather-app25 -p  ${Service_PORT}:${Docker_PORT} --env PORT=${Docker_PORT} linuxacademy/weather-app:v25'
                }
            }
        }
       
    }
}
