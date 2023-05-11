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
