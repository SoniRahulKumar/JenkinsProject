pipeline{
  def application = "JenkinsProject"
    
  //Its mandatory to change the Docker Hub Account ID after this Repo is forked by an other person
  def dockerhubaccountid = "SoniRahulKumar"
	
  // reference to maven
  // ** NOTE: This 'maven-3.5.2' Maven tool must be configured in the Jenkins Global Configuration.   
  def mvnHome = tool 'maven-3.5.2'

  // holds reference to docker image
  def dockerImage
 
  def dockerImageTag = "${dockerhubaccountid}/${application}:${env.BUILD_NUMBER}"
  agent any
  stages{
    stage('CodeCheckout'){
      steps{
        echo('Code Chekout from Repo')
		git 'https://github.com/SoniRahulKumar/JenkinsProject.git'
      }
    }
    stage('Maven Build'){
      steps{
        echo('Building')
	      	sh "'${mvnHome}/bin/mvn' clean install"
      }
    }
    stage('Docker image build'){
      steps{
        echo('Docker')
		dockerImage = docker.build("${dockerhubaccountid}/${application}:${env.BUILD_NUMBER}")
      }
    }
    stage('Test'){
      steps{
        echo('Testing')
      }
    }
    stage('Release'){
      steps{
        echo('Releasing')
      }
    }
  }
}
