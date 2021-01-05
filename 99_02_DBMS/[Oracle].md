## ORACLE 18C XE 접속방법 (나의 경우 회사 네트워크에서 127.0.0.1이 아니라 정확한 ip를 입력해서 됨)
https://www.youtube.com/watch?v=jMzhxbiFXtM
 
sqlplus / as sysdba
SELECT name, open_mode, cdb FROM v$database;
show pdbs;
exit

lsnrctl status (오라클의 ServiceName확인하기)

services.msc oracle이 켜져있는지 확인하기

C:\app\f5074\product\18.0.0\dbhomeXE\network\admin\tnsnames.ora  SERVICE_NAME확인하기 



## 오라클 sql파일 임포트 방법  https://enspring.tistory.com/517
https://blog.naver.com/PostView.nhn?blogId=kimdj217&logNo=221405032563&parentCategoryNo=&categoryNo=34&viewDate=&isShowPopularPosts=false&from=postView
cmd 에서 sqlplus system
@C:\Users\f5074\Documents\ex.sql