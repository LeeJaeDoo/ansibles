pid=`ps -ef | grep sp-0.0.1-SNAPSHOT.jar | grep -v 'grep' | awk '{print $2}'`
echo $pid
kill -9 $pid
