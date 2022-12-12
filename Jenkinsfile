node ('Slave') {

        stage('Pulling GIT') {
             
                echo 'Pulling...';
                  git branch: 'main',
                  url : 'https://github.com/abbessiamine/CI.git',
                  credentialsId: 'github';
            
        }        
     
       stage('MAVEN Package') {
   		 sh "docker-compose up&"
   		 sh "chmod +x mvnw "
    		 sh "./mvnw package"
  }


	    
}
