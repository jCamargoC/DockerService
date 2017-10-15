docker login -u jcamargo7190 -p Asdf1234$
docker run -it --rm -v "$PWD":/app -w /app jcamargo7190/dockerservice:1.0.0 mvn clean install
docker run -it -d --name dockerizedservice -p 8080:8080 -v "$PWD":/app jcamargo7190/dockerservice:1.0.0 bash -c "cp /app/target/DockerService.war /tomcat/webapps/ & /tomcat/bin/catalina.sh run"

