## 인덱스 작성 방법

### 1. 개발 전 테이블의 인덱스부터 확인하는 습관부터 가진다.


### 2. 인덱스는 내부 규칙에 맞게 설정한다.

### 3. 인덱스 전 주의 사항

인덱스 컬럼을 변형하여 비교하지 않기
안되는 형태 AND TO_CHAR(TO_TIMESTAMP(WIP_LOT_PROCESS.TRACKOUT_DATE_TIME, 'YYYYMMDD HH24MISSFF3'), 'YYYYMMDDHH24MI')  <  '201801202359'
괜찮은 형태 AND WIP_LOT_PROCESS.TRACKOUT_DATE_TIME  >  TO_CHAR(TO_TIMESTAMP('202001130000' ,'YYYYMMDDHH24MI'), 'YYYYMMDD HH24MISSFF3')

### 테이블 인덱스 확인
SELECT A.TABLE_NAME
	, A.INDEX_NAME
	, A.COLUMN_POSITION
	, A.COLUMN_NAME
FROM USER_IND_COLUMNS A
WHERE A.TABLE_NAME = 'WIP_LOT' --테이블명
ORDER BY A.INDEX_NAME, A.COLUMN_POSITION

### 인덱스 생성 삭제
인덱스 생성
CREATE INDEX WIP_LOT_PROCESS_UIDX_02 ON WIP_LOT_PROCESS( SITE, TRACKOUT_DATE_TIME );

인덱스 삭제
DROP INDEX WIP_LOT_PROCESS_UIDX_02; 


### Reference
DB에서 인덱스 제대로 사용하기
https://firedev.tistory.com/entry/Oracle-DB%EC%97%90%EC%84%9C-INDEX-%EC%A0%9C%EB%8C%80%EB%A1%9C-%EC%82%AC%EC%9A%A9%ED%95%98%EA%B8%B0

ORACLE 인덱스(Index) 개념/종류/주의사항/활용,관리
https://rongscodinghistory.tistory.com/113