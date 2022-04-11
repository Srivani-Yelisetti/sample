pipeline{
agent any
stages{
  stage('git'){
        steps{
          git branch: 'main', credentialsId: 'Github', url: 'https://github.com/Srivani-Yelisetti/sample.git'
        }
  }
  stage('docker pull'){
    steps{
      sh 'docker pull nginx:latest'
    }
  }
  stage('docker run'){
    steps{
    sh 'docker run -it -d -p 89:80 --name srivani nginx:latest'
    }
  }
}
}
