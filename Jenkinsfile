pipeline
{
  agent any

  tools
  {
  maven "maven-3.9.9-first"
  }
  stages
  {

     stage('checkout')
     {

       steps
       {
        git branch: 'dev', credentialsId: '1ab66736-0432-4fe2-8d9c-afc37e16a1d3', url: 'https://github.com/mani-devops-9/Maven-web-project.git'
        }
     }

     stage('COMPILE')
     {
         steps
         {

         sh "mvn clean compile"

         }
     }

    stage('BUILD')
     {
         steps
         {

         sh "mvn clean package"

         }
     }

    stage('SQ REPORT')
     {
         steps
         {

         sh "mvn clean sonar:sonar"

         }
     }
    stage('Deploy to Nexus')
     {
         steps
         {

         sh "mvn clean deploy"

         }
     }

        stage('Deploy App')
     {
        steps
        {
         echo "Deploying WAR file using curl..."

        sh """
            curl -u mpusunuri:Devops82s.online \
            --upload-file /var/lib/jenkins/workspace/Declarative-pl1/target/maven-web-application.war \
            "http://54.242.29.89:8080/manager/text/deploy?path=/maven-web-application&update=true"
        """
        }
     }



  } //stages ending
  
} //pipeline ending
