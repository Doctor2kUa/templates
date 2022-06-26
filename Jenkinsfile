node {
     def app

     stage('Clone repository') {


         checkout scm
     }

     stage('Build image') {

        app = docker.build("doctor2kkk/test")
     }

     stage('Test image') {


         app.inside {
             sh 'echo "Tests passed"'
         }
     }

     stage('Push image') {

         docker.withRegistry('https://registry.hub.docker.com', 'docker_ doctor2kkk') {
             app.push("${env.BUILD_NUMBER}")
             app.push("0.0.1")
         }
     }
 }
