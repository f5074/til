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


## 1분단위로 날짜 생성

SELECT TO_CHAR(TO_DATE(START_DTTM, 'YYYYMMDDHH24MI') + (((LEVEL / 60)) / 24), 'YYYYMMDDHH24MI') TIME_STR
FROM (
	SELECT '202012291300' AS START_DTTM
		, '202012301430' AS END_DTTM
	FROM DUAL
	) connect BY TO_DATE(START_DTTM, 'YYYYMMDDHH24MI') + (((LEVEL / 60)) / 24) <= TO_DATE(END_DTTM, 'YYYYMMDDHH24MI');


## x일 단위로 날짜 생성

SELECT TO_CHAR(DUM_DAYS, 'YYYYMMDD') DUM_DAYS
FROM (
    SELECT TO_DATE('20200101', 'YYYYMMDD') - 1 + ROWNUM AS DUM_DAYS
    FROM ALL_OBJECTS
    WHERE TO_DATE('20200101', 'YYYYMMDD') - 1 + ROWNUM < TO_DATE('20200120', 'YYYYMMDD')
    )
 WHERE TO_CHAR(DUM_DAYS, 'D') = '7'


## 설비데이터
설비데이터를 차트로 만들때, 각 분단위로 데이터가 쌓이는 상황
상황에 따라 분단위 데이터가 중간에 빠질 때 빈값이 없도록 등록하는 방법
1. 클라이언트에서 없을 경우 이전데이터를 추가하는 형태로 구현
2. 쿼리를 사용해서 없는 데이터의 경우 만들어주는 방법
3. 설비에서 측정하는 항목별(ITEM_CD)로 날짜별로 데이터를 생성해야함
4. 데이터가 없는 빈값의 경우 이전 혹은 이후에 있는 데이터로 값을 덮어씌워야 함
   



## Reference
https://m.cafe.daum.net/oraclesqltuning/8ACn/28
