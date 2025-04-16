#!/bin/bash

# Set JMeter home directory
JMETER_HOME="C:\Users\Administrator\Desktop\apache-jmeter-5.6.3\apache-jmeter-5.6.3"

# Set the JMeter test plan file
TEST_PLAN="C:\Users\Administrator\Desktop\Chaos\Handson_31_jpet.jmx"

# Run JMeter test plan
$JMETER_HOME/bin/jmeter -n -t $TEST_PLAN -l results.jtl

# Check if the test was successful
if [ $? -eq 0 ]; then
  echo "Test executed successfully."
else
  echo "Test execution failed."
fi