pipeline{
  agent any
  stages{
    stage('CodeCheckout'){
      steps{
        echo('Code Chekout from Repo')
		git url: "https://github.com/SoniRahulKumar/JenkinsProject.git" , branch: "main"
      }
    }
    stage('Build'){
      steps{
        echo('Building')
	      	sh "docker build -t JenkinsProject"
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
