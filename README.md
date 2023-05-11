## Workshop
* NodeJS
* Database :: MySQL

## Clone or Download source code
```
$git clone https://github.com/up1/workshop-nodejs-web.git
$cd workshop-nodejs-web
```

## Step to run
```
$npm install
$npm start
```
Open in browser = http://localhost:3000


## Start with Docker Compose
```
$docker compose build

$docker compose up -d db
$docker compose ps
$docker compose logs --follow

$docker compose up -d web
$docker compose ps
$docker compose logs --follow
```

Open in browser = http://localhost:3000

## UI testing with Selenium
```
$docker compose up -d chrome

$docker compose build ui-test
$docker compose up ui-test
```

## Fix issue !!
```
$sudo vi /etc/docker/daemon.json
```

Edit file
```
{
  "ipv6": true,
  "fixed-cidr-v6": "2001:db8:1::/64"
}
```

Restart Docker
```
$sudo service docker start
```
## [CI/CD with Jenkins](https://github.com/up1/workshop-nodejs-web/tree/main/ci)
* Install
* Design pipeline
* Create and run pipeline
