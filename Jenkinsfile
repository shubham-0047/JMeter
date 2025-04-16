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
                bat 'jmeter -n -t C:/Users/Administrator/Desktop/Chaos/test.jmx -l result.jtl'
            }
        }

        stage('Generate HTML Report') {
            steps {
                bat 'jmeter -g result.jtl -o jmeter-report'
            }
        }

        // stage('Publish Results') {
        //     steps {
        //         publishHTML([
        //             reportDir: 'jmeter-report',
        //             reportFiles: 'index.html',
        //             reportName: 'JMeter Performance Report',
        //             allowMissing: false,
        //             alwaysLinkToLastBuild: true,
        //             keepAll: true
        //         ])
        //     }
        }
    }
}
