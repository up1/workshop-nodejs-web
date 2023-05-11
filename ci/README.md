## Build
```
$docker image build -t my-jenkins .
```

## Run
```
$docker container run -d -u 0:0 --group-add $(stat -c '%g' /var/run/docker.sock) \
  -v /var/run/docker.sock:/var/run/docker.sock \
  -p 8080:8080 -p 50000:50000 \
  -v $(pwd)/jenkins:/var/jenkins_home \
  --name jenkins my-jenkins

$docker container ps
$docker container logs jenkins --follow
```

## Installation process
* Access to url=http://localhost:8080