pipeline {
  agent any
  stages {
    stage('Build Docker') {
      steps {
        sh 'docker rmi hossamelshamy/goviolin_image'
        sh 'docker build -t hossamelshamy/goviolin_image .'
      }
      post {
                success {
                    echo 'Building Docker Image Succeeded'
        }
                failure {
                    echo 'Building Docker Image FAILED'
                }
            }
    }

    stage('Push to DockerHub') {
      steps {
        withDockerRegistry([ credentialsId: "DockerHub", url: "" ]) {
          sh  'docker push hossamelshamy/goviolin_image'
        }
      }
      post {
                success {
                    echo 'Pushing Docker Image Succeeded'
        }
                failure {
                    echo 'Pushing Docker Image FAILED'
                }
            }
    }

  }
}
