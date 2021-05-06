## Docker Using in Windowss
### Version Check 

cmd > docker version


### MariaDB 사용법
1. 도커이미지 다운로드
docker pull mariadb

2. 컨테이너 실행
docker container run -d -p 3306:3306 -e MYSQL_ROOT_PASSWORD=1234 --name mariadb mariadb


docker container run -d -p 3306:3306 -e MYSQL_ROOT_PASSWORD=1234 -v d:\docker\maria:/var/mariadb --restart=always --name mariadb mariadb

3. 컨테이너 실행 확인
docker container ls -a
docker container ls -as


4. mariadb 접속

docker exec -i -t mariadb bash 
mysql -uroot -p1234


5. database 추가

show databases;
create schema test;


6. 컨테이너 재시작
docker stop mariadb
docker start mariadb

7. mariaDB 로그 확인
docker logs -f --tail=10 mariadb

### Docker 재시작

### 컨테이너 삭제
1. 동작중인 컨테이너 확인
docker ps
2. 정지된 컨테이너 확인
docker ps -a
3. 컨테이너 삭제
docker rm [ContainerID]

### 이미지 삭제
1. 현재 이미지 확인
docker images

2. 이미지 삭제
docekr rmi [ImageID]

### Reference




