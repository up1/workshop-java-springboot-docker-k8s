## Demo project
* Java with Spring Boot
* Apache Maven project
* Working with Docker
  * Dockerfile
  * Docker compose
* Working with Kubernetes
  * Pod
  * Service
  * Deployment

### 1. Working with Apache Maven
```
$mvnw clean package
$java -jar target/hello-0.0.1-SNAPSHOT.jar
```
Call APIs
* http://localhost:8080/
* http://localhost:8080/actuator/health

### 2. Working with Docker
* [OpenJDK](https://hub.docker.com/_/openjdk)

Build image
```
$docker image build -t somkiat/hello-spring:1.0 .
$docker image ls
```

Create container
```
$docker container run -d -p 8080:8080 somkiat/hello-spring:1.0
```

Call APIs
* http://localhost:8080/
* http://localhost:8080/actuator/health

### 3. Working with Docker compose

Building image
```
$docker-compose -f docker-compose-build.yml build
$docker image ls
```

Create container
```
$docker-compose -f docker-compose-deploy.yml up -d
$docker-compose -f docker-compose-deploy.yml ps

NAME                                 COMMAND                  SERVICE             STATUS              PORTS
hello-java-docker-kunernetes-api-1   "java -cp app:app/li…"   api                 running             0.0.0.0:8080->8080/tcp
```

Call APIs
* http://localhost:8080/
* http://localhost:8080/actuator/health

### 4. Working with Kubernetes
```

```