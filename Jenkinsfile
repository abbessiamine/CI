node ('Slave') {

        stage('Pulling GIT') {
             
                echo 'Pulling...';
                  git branch: 'main',
                  url : 'https://github.com/abbessiamine/CI.git',
                  credentialsId : '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',
            
        }        
     
       stage('MAVEN Package') {
   		 sh "docker-compose up&"
   		 sh "chmod +x mvnw "
    		 sh "./mvnw package"
  }


	    
}
