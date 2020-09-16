pipeline
    agent any
        stages{
        
            stage('Lint HTML'){
                steps{
                    sh 'tidy -q -e *.html'
                }
            }
            stage('Install hadolint'){
                steps{
                    sh 'make install'
                }
            }
            stage('Lint Dockerfile'){
                steps{
                    sh 'make lint'
                }
            }
            stage('build and run Dockerfile'){
                steps{
                    sh './run_docker.sh'
                }
            }
            stage('Docker Image Security Scan') {
                steps { 
                    aquaMicroscanner imageName: 'some-nginx:latest', notCompliesCmd: 'exit 1', onDisallowed: 'fail', outputFormat: 'html'
                }
            }
            stage('Push Docker Image to dockerhub') {
                steps { 
                    sh './upload_docker.sh'
                }
            }
        }