pipeline {
    agent any
    stages {
        stage('Compilar') {
            steps {
                sh 'javac HelloWorld.java'
                sh 'jar cfe HelloWorld.jar HelloWorld HelloWorld.class'
            }
        }
        stage('Construir Imagen Docker') {
            steps {
                sh 'docker build -t hola-jar .'
            }
        }
        stage('Pruebas') {
            steps {
                sh 'docker run --rm hola-jar'
            }
        }
    }
}