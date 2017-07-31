sh createKey.sh
docker build --tag jenkins-test .
docker run -p 8083:8083 -p 50000:50000 jenkins-test:latest