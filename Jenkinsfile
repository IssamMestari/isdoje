node {

    def app

    stage('clone') {
        checkout scm
    }

    stage('build image') {
        app = docker.build("kvarachit/nginx")
    }

    stage('test image') {
        app.withRun('-p 80:80') { c ->
            sh 'docker ps'
            sh 'curl localhost'
        }
    }
}