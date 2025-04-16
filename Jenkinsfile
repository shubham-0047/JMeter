pipeline {
    agent any

    stages {
        stage('Clone Repository') {
            steps {
                git 'https://github.com/shubham-0047/JMeter.git'
            }
        }

        stage('Run JMeter Test') {
            steps {
                sh 'jmeter -n -t test.jmx -l result.jtl'
            }
        }

        stage('Publish Results') {
            steps {
                // Assuming you install HTML Publisher plugin
                publishHTML([
                    reportDir: '.',
                    reportFiles: 'result.jtl',
                    reportName: 'JMeter Test Results'
                ])
            }
        }
    }
}
