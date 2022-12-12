pipeline {
    agent any
    environment {

        NEXUS_VERSION = "nexus3"

        NEXUS_PROTOCOL = "http"

        NEXUS_URL = "192.168.1.2:8081"

        NEXUS_REPOSITORY = "nexus-repo"

        NEXUS_CREDENTIAL_ID = "adminNexus"
        
        
        registry = "rihab96/spring"
        registryCredentials='dockerHub'
        dockerImage= ' '

      }
    stages{
    
    
        stage('stage1 : Checkout GIT'){
            steps {
                echo 'Pulling..';
                  git branch: 'main',
                  url : 'https://github.com/abbessiamine/CI.git';
            }
        }
        
        
        stage('stage2 : Maven Build Project') {
            steps {
                echo "Build project"
                sh "chmod +x mvnw "
    		    sh "./mvnw package"
                sh 'mvn clean install '
            }
        }
        

    
    }
}
