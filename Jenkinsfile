pipeline{
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
        echo('Deploying')
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
