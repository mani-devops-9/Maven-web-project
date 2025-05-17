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
  
post {
  success {
    notifyBuild(currentBuild.result)
  }
  failure {
notifyBuild(currentBuild.result)
      }
}
}//pipeline closing


def notifyBuild(String buildStatus = 'STARTED') {
  // build status of null means successful
  buildStatus =  buildStatus ?: 'SUCCESS'

  // Default values
  def colorName = 'RED'
  def colorCode = '#FF0000'
  def subject = "${buildStatus}: Job '${env.JOB_NAME} [${env.BUILD_NUMBER}]'"
  def summary = "${subject} (${env.BUILD_URL})"

  // Override default values based on build status
  if (buildStatus == 'STARTED') {
    color = 'YELLOW'
    colorCode = '#FFFF00'
  } else if (buildStatus == 'SUCCESS') {
    color = 'GREEN'
    colorCode = '#00FF00'
  } else {
    color = 'RED'
    colorCode = '#FF0000'
  }

  // Send notifications
  slackSend (color: colorCode, message: summary, channel: '#mani-rvmk')
}
  
} //pipeline ending
