pipeline {
    agent any

    environment {
        // Set JMeter installation path if it's not globally set in your environment variables
        JMETER_HOME = 'C:\\Users\\Administrator\\Desktop\\apache-jmeter-5.6.3\\apache-jmeter-5.6.3\\bin\\jmeter.bat'  // Replace with the correct path
    }

    stages {
        stage('Clone Repository') {
            steps {
                // Clone the GitHub repository
                git 'https://github.com/shubham-0047/JMeter.git'
            }
        }

        stage('Run JMeter Test') {
            steps {
                // Run JMeter test in non-GUI mode
                bat '"C:\\Users\\Administrator\\Desktop\\apache-jmeter-5.6.3\\apache-jmeter-5.6.3\\bin\\jmeter.bat" -n -t test.jmx -l result.jtl'
            }
        }

        stage('Publish Results') {
            steps {
                // Publish the HTML report of JMeter results
                publishHTML([
                    reportName: 'JMeter Test Results',  // The name of the report in Jenkins UI
                    reportDir: '.',                     // Directory where the result file is located
                    reportFiles: 'result.jtl',          // The result file generated by JMeter (adjust if needed)
                    keepAll: true,                      // Keep all reports, not just the latest
                    alwaysLinkToLastBuild: true,        // Always link to the last build, even if failed
                    allowMissing: false                 // Fail the build if the report is missing
                ])
            }
        }
    }
}
