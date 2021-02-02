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


## X일 단위 활용

WITH TB_DATE AS (
	SELECT TO_CHAR(DUM_DAYS, 'YYYYMMDD') DUM_DAYS
	FROM (
	    SELECT TO_DATE('20200101', 'YYYYMMDD') - 1 + ROWNUM AS DUM_DAYS
	    FROM ALL_OBJECTS
	    WHERE TO_DATE('20200101', 'YYYYMMDD') - 1 + ROWNUM <= TO_DATE('20200120', 'YYYYMMDD')
	    )
), TB_CODE AS(
		SELECT GENE_CD_DESC
		FROM T_CD_GENE_DATA
		WHERE 1 = 1
		  AND GENE_DV = 'STAT_EQP_SET'
)
SELECT TD.DUM_DAYS, TC.GENE_CD_DESC
  FROM TB_DATE TD, TB_CODE TC
ORDER BY DUM_DAYS  


## 설비데이터
설비데이터를 차트로 만들때, 각 분단위로 데이터가 쌓이는 상황
상황에 따라 분단위 데이터가 중간에 빠질 때 빈값이 없도록 등록하는 방법
1. 클라이언트에서 없을 경우 이전데이터를 추가하는 형태로 구현
2. 쿼리를 사용해서 없는 데이터의 경우 만들어주는 방법
3. 설비에서 측정하는 항목별(ITEM_CD)로 날짜별로 데이터를 생성해야함
4. 데이터가 없는 빈값의 경우 이전 혹은 이후에 있는 데이터로 값을 덮어씌워야 함
   
## DBLINK

JOIN 자체를 외부 DB에서 수행하려면, /*+ DRIVING_SITE(EXT_TABLE) */ 을 사용한다.

-> 보통 외부 DB의 TABLE이 큰 경우, 작은 내부 DB DATA 를 그쪽으로 보낸후 JOIN 이후의 결과를 받는 방식

LEADING 등의 힌트가 안 먹을때는? 그냥 테이블, 뷰 순서 바꾸고 ORDERED 힌트 적용하면 먹힘

-> Query Transformation 등으로 인해 Query Block 이 바뀔수 있어 명시적으로 이름을 지정하는 LEADING 힌트가 안먹을 때가

있는 것 같다. 10053 Trace 확인하면 정확한 BLOCK 명이 나오려나?




## Reference
https://m.cafe.daum.net/oraclesqltuning/8ACn/28
https://lawmin.tistory.com/58

