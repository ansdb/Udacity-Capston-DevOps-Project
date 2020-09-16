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
        
        }