pipeline{
agent any
stages{
  stage('git'){
        steps{
          git branch: 'main', credentialsId: 'Github', url: 'https://github.com/Srivani-Yelisetti/sample.git'
        }
  }
  stage('docker remove'){
    steps{
      sh 'docker rm -f srivani1'
      sh 'docker rmi srivani:latest'
    }
  }
  stage('docker build'){
    steps{
      sh 'docker build -t srivani:${BUILD_NUMBER} .'
    }
  }
  stage('docker run'){
    steps{
      sh 'docker run -it -d -p 90:80 --name srivani1 srivani:${BUILD_NUMBER}'
    }
  }
}
}
