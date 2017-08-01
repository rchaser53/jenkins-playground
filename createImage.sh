sh createKey.sh
docker build --tag jenkins-test .
docker run -p 8080:8080 -p 50000:50000 jenkins-test:latest
