#!/bin/bash

ssh -i sp-member.pem ubuntu@15.165.213.153 "rm ~/app/sp-0.0.1-SNAPSHOT.jar"

scp -i sp-member.pem /var/lib/jenkins/workspace/test/build/libs/sp-0.0.1-SNAPSHOT.jar ubuntu@15.165.213.153:~/app

ssh -i sp-member.pem ubuntu@15.165.213.153 "nohup java -jar ~/app/sp-0.0.1-SNAPSHOT.jar"
