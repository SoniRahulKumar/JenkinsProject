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
		sh label: ‘’, script: ‘mvn clean package ‘
      }
    }
    stage('Docker image build'){
      steps{
        echo('Deploying')
		sh ‘docker build -t pkw0301/prakash-app:1.0.0 .’
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
