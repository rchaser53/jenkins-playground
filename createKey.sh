openssl genrsa 1024 > https.key
openssl req -new -key https.key > https.csr
openssl x509 -req -in https.csr -signkey https.key -out https.pem -days 3650