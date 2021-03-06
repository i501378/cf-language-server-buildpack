#!/bin/bash

CWD=$(pwd)
logfile=$CWD/ls_jsts_launcher.log

echo "**** Launching JSTS Language Server..."    >$logfile
chmod 777 ./installDependencies.sh
./installDependencies.sh                        >>$logfile 2>&1
echo '**** Starting server.js using node...'    >>$logfile
../node_js/bin/node ./main.js
