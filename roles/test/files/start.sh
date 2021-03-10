#!/bin/bash

ssh -i /home/ubuntu/ansibles/roles/test/files/sp-member.pem ubuntu@15.165.213.153 "rm ~/app/sp-0.0.1-SNAPSHOT.jar ~/app/stop.sh"

scp -i /home/ubuntu/ansibles/roles/test/files/sp-member.pem /var/lib/jenkins/workspace/test/build/libs/sp-0.0.1-SNAPSHOT.jar /home/ubuntu/ansibles/roles/test/files/stop.sh ubuntu@15.165.213.153:~/app

ssh -i /home/ubuntu/ansibles/roles/test/files/sp-member.pem ubuntu@15.165.213.153 "nohup java -jar ~/app/sp-0.0.1-SNAPSHOT.jar"
