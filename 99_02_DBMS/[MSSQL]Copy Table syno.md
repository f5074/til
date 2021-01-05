MS-SQL 테이블 복사

1. 테이블을 생성하면서 테이블의 데이타 복사

select * into 생성될테이블명 from 원본테이블명

테이블 구조만 복사하겠다면
select * into 생성될테이블명 from 원본테이블명 where 1=2

2. 테이블이 이미 생성되어 있는경우 데이타만 복사

insert into 카피될테이블명 select * from 원본테이블명

특정 데이타만 복사 하겠다면
insert into 카피될테이블명 select * from 원본테이블명 where 검색조건


출처: https://iberis.tistory.com/10 [Iberis]