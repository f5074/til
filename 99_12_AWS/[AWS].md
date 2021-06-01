curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -

sudo apt-get install -y nodejs

node -v
npm -v

cd /

ls

cd opt

pwd

whoami

mkdir myproject
sudo mkdir myproject
ls

ls -al

sudo chown ubuntu:ubuntu myproject

cd myproject
npm install -g nodemon express express-generator
sudo npm install -g nodemon express express-generator

express
ls

 vi package.json
esc -> :q or :wq

cd bin/www
cd bin
vi www
cd ..
npm install
npm start

sudo npm install -g pm2
pm2 start bin/www

pm2 list
pm2 stop 0


## 전체삭제
cd /
cd opt/
rm -rf myproject/*

## mysql

## 입력모드
vi app.js
i
### 수정작업
i 입력 후 수정
완료 후 esc > :wq

### 수정을 안한 경우
esc > :q



##
vi .env

pm2 start server.js




## nginx 설치 및 배포

sudo apt-get install nginx

sudo vi /etc/opt/sources.list

deb http://ap-northeast-2.ec2.archive.ubuntu.com/ubuntu/ xenial main restricted

deb http://ap-northeast-2.ec2.archive.ubuntu.com/ubuntu/ xenial-updates main restricted

deb http://ap-northeast-2.ec2.archive.ubuntu.com/ubuntu/ xenial universe


deb http://nginx.org/packages/ubuntu/ xenial nginx
deb-src http://nginx.org/packages/ubuntu/ xenial nginx

sudo apt-get update
sudo service nginx start
sudo service nginx status

cd /etc/nginx
ls
cd conf.d
ls
sudo vi default.conf

sudo vi /etc/nginx/conf.d/default.conf


server {
    listen 80;
    server_name localhost;
    location / {
        root /usr/share/nginx/html;
        index index.html index.html;
    }
    error_page 500 502 503 504 /50x.html;
    location = /50x.html{
        root /usr/share/nginx/html;
    }
}


변경
server {
    listen 80;
    server_name localhost;
    location / {
        proxy_pass http://127.0.0.1:3000/;
    }
    error_page 500 502 503 504 /50x.html;
    location = /50x.html{
        root /usr/share/nginx/html;
    }
}

sudo service nginx restart
sudo service nginx reload




server {
    listen 80;
    location / {
        proxy_pass http://127.0.0.1:3000/;
    }

    error_page 404 /404.html;
    location = /40x.html {
    }
    error_page 500 502 503 504 /50x.html;
    location = /50x.html {
    }
}

sudo unlink /etc/nginx/sites-enabled/default


vi /etc/nginx/sites-available/reverse-proxy.conf



sudo service nginx stop

## 재배포가 필요한 경우

pm2 stop server
pm2 delete server
pm2 start server.js

sudo service nginx stop
sudo service nginx start
sudo service nginx reload

cd /
cd opt/
rm -rf myproject/*

