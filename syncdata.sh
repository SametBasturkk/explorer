#bin/bash

cd ~/explorer
NB=`pgrep -f "nodejs --stack-size=10000" | wc -l`
echo $NB
if [ "$NB" -eq "0" ]; then 
rm tmp/index.pid
/usr/bin/nodejs --stack-size=10000 scripts/sync.js index update &
#/usr/bin/nodejs --stack-size=35000 scripts/sync.js index reindex &
fi
