USER = 'nya-n'
PASSWORD = 'gya-n'

TOKEN = curl "http://localhost:8080/crumbIssuer/api/xml?xpath=concat(//crumbRequestField,%22:%22,//crumb)"  --user $USER:$PASSWORD
curl http://localhost:8080/job/testbuild/build -X POST --user $USER:$PASSWORD -H $TOKEN
