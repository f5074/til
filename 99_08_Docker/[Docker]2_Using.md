## Docker Using in Windowss
### (1) 

cmd > docker version


### 오라클 사용법
1. daggerok/oracle 설치
2. docker run -d --rm --name oracle-xe --shm-size=1g -p 1521:1521 -e ORACLE_PWD=password daggerok/oracle
3. docker 재시작
4. oracle 접속

127.0.0.1:1521
SID: XE
user: sys
password: password
Role SYSDBA

CREATE USER drawing IDENTIFIED BY drawing
ALTER USER drawing IDENTIFIED BY test
 grant connect, resource to drawing 

GRANT CREATE SESSION TO drawing
GRANT CREATE ANY TABLE TO drawing



### Reference
https://subicura.com/2017/01/19/docker-guide-for-beginners-2.html
오라클 관련 https://github.com/daggerok/oracle/releases



