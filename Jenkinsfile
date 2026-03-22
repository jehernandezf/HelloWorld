pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git branch: 'main',
                    url: 'https://github.com/jehernandezf/HelloWorld.git'
            }
        }
        stage('Compilar') {
            steps {
                // Entramos a la carpeta src y compilamos la clase
                sh 'javac src/mx/com/saludo/HelloWorld.java -d build'
                
                // Creamos el JAR a partir de la clase compilada
                sh 'jar cfe build/HelloWorld.jar mx.com.saludo.HelloWorld -C build .'
            }
        }
        stage('Construir Imagen Docker') {
            steps {
                sh 'docker build -t docker-java-jar .'
            }
        }
        stage('Pruebas') {
            steps {
                sh 'docker run --rm docker-java-jar'
            }
        }
    }
}