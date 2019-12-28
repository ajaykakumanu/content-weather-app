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
			sh 'cd src'
			 sh 'ls -la'
		    sh 'docker image build -t linuxacademy/weather-app:v14 .'
                    sh 'docker container run -d --name weather-app14 -p  8092:3010 linuxacademy/weather-app:v14'
                }
            }
        }
       
    }
}
