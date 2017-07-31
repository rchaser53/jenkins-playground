USER='nya-n'
PASSWORD='gya-n'
WEBTOKEN='testtoken'

TOKEN=`curl "http://localhost:8080/crumbIssuer/api/xml?xpath=concat(//crumbRequestField,%22:%22,//crumb)"  --user $USER:$PASSWORD`
curl http://localhost:8080/job/ttt/build?token=$WEBTOKEN -X POST --user $USER:$PASSWORD -H $TOKEN
