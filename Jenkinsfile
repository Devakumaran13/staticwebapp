pipeline {
    agent any
    tools {
        maven "M3"
    }
    environment {
    
        GIT_REPO = 'https://github.com/Devakumaran13/Docker-Onlinestore.git'
        GIT_BRANCH = '*/dev'
        registry='devakumaran/images'
        dockerlogin = credentials('dockerhub_id')
    }

    stages{
        stage("Cleanup Workspace"){
                steps {
                cleanWs()
                }
        }

        stage("Checkout from SCM"){
                steps {
                   
                    git branch: 'main', url: 'https://github.com/Devakumaran13/staticwebapp.git'
                    
                    
                }
        }
       
/*
        stage("Build Application"){
            steps {
                sh "mvn clean package"
            }

       }

       stage("Test Application"){
           steps {
                 sh "mvn test"
           }
       }
*/
        stage("Build & Push Docker Image") {
            steps {
                script{
                    withCredentials([usernamePassword(credentialsId: 'dockerhub_id', usernameVariable: 'DOCKER_USERNAME', passwordVariable: 'DOCKER_PASSWORD')]) {
                      sh 'docker login -u $DOCKER_USERNAME -p $DOCKER_PASSWORD'    
                      sh 'docker image build -t healet .'
                      sh 'docker tag healet:latest devakumaran/images:healet'
                      sh 'docker push devakumaran/images:healet'
                    }
                }
            }
        }
    }
}
 
