1교시 9시30분 복습

1.제어문
2.논리연산자
3.조건문
4. 반복문 for while



1.함수
2.모듈
변수 <메서드 < 모듈 < 패키지 < 클래스(=file)



-모듈 설치 위치

C:\Python\Python36-32\Lib\site-packages


C:\ProgramData\Anaconda3\Lib\site-packages



-설치방법

1.다운로드 설치시 C:\Python\Python36-32\Lib\site-packages에 저장됨
2.pip3 install package명 , pip install package명    설치위치는 C:\Python\Python36-32\Scripts    저장위치:C:\Python\Python36-32\Lib\site-packages
3.conda conda install package명   C:\ProgramData\Anaconda3\Lib\site-packages에 저장됨
4.파이참에서 설치시 해당프로젝트 내에서만 사용가능함 해당 패키지에서 사용가능C:\Users\cpc-001\PycharmProjects\Education\venv\Lib\site-packages


-명령프롬프트로 곧장 사용하는 방법

View > Tool Window > Terminal 사용시





클래스

1.객체

객체는 Property(속성)와  Method(행위)
객체는 변수나 함수 등을 모아놓은 덩어리
객체에는 클래스와 인스턴스


int x = 123 이면 x는 가공된 인스턴스 변수
    y 는 일반 변수




인스턴스 : 실체화 한다

클래스를 인스턴스화(실체화)시킨 것이 객체



변수,매서드     소문자
클래스        대문자


상속

-단일상속(1:1)
-다중상속(1:N)

자바
단일상속extends sample
다중상속 interface sample
extends sample implements sample1


파이썬의 경우는 상관없음



__init__의 경우 이니셜라이즈 기본적으로 사용하는 매서드, 초기화를 설정해주는 것

객체생성하면 자동으로 실행되는 매서드


자바의 경우 main을 먼저 실행

class a()
{
    public static void main(String[] args)
    {
    


    }
}


-클래스 구현시

자바의 경우 add(a) ,  add(x,y) 식으로 하면
파이썬의 경우 def __init(self,val1,val2)  첫번째 인자는 반드시 self를 사용해야함 ,super도 사용가능

c,c++의 경우 this(자기자신),super(상위클래스) 사용



    객체의 경우

    객체     1.생성
        2.호출(사용) 객체명.매서드명 또는 객체명.변수명



지역변수: 해당 블록(class)내에서 만 사용
전역변수어디에서나 사용



자바의 경우

class명 객체명 = new class명();
Car mycar = new Car();



1)
매서드 = 인스턴스 매서드(instance method), 정적 매서드(static method), 클래스 매서드(class method)

@staticmethod 의 경우는 self사용안해도됨
@calssmethod 의 경우 첫번째는 cls가 와야함




*2교시 11시50분

클래스 생성

class Car:
    def __init__(self):
        self.drive()
    def drive(self):
        self.speed = 60



클래스 생성시 접근제한자로 생성

class Car:
    def __init__(sef,v1,v2):
        self.__v1 = v1
        self.__v2 = v2

초기자(initializer)
소멸자(destructor) 클로징시 소멸시키는것 C,C++에서는 사용하나 여기서는 안 써도 됨



def calcArea(self)시에 값이 없을 경우 pass 를 넣어줘야함


*3교시 12:20



필드란 모든것이란 의미

객체필드 객체 모든것


__del__

__add__

__sub__

__cmp__

__str__


*문자와 문자열

Char  1글자(문자)
String 여러글자(단어)



*getMethod(가져옴), setMethod (설정)  


Client   ---(요청)---> Web Browser
     <---(결과)---


localhost (도메인) : 8888(포트번호)
127.0.0.1 (ip)



get,set 매서드

선언된 변수만 get,set 사용



형을 선언하지 않아서 개수만 맞으면 됨




5.클래스 상속(Inheritance)


배열 x  변수 각기 다른 data 이기에 형이 같아야함



4교시 14시30분

mysql_install



show databases;




cmd

cd c:\program files\mysql\mysql server*\bin


dir / d        #폴더만 표시하기

mysql -u root -p  #-u는 유저 -p는 비밀번호



oracle
mysql   -동접 999명이라 넘으면 다운됨
mssql    -윈도우에서
sqlite
mongoDB
pro


생성한 DB를 열어야 사용할 수 있음
use korea;


create table seoul
(
  bunho int(5)
, irum char(10) not null
, 전번 varchar(15)
);


desc seoul;

INSERT INTO seoul
VALUES
(
  123
, "홍길동"
, "010-1234-5678"
);

INSERT INTO seoul
VALUES
(
  124
, "홍길사"
, "010-1234-4000"
);


INSERT INTO seoul
VALUES
(
  125
, "홍길오"
, "010-1234-5000"
);


SELECT *
  FROM seoul;


5교시 16시 20분

create database hankuk;


use hankuk;


create table day24
(
  no int
, name varchar(10)
, tel char(15)
, address varchar(30)
);


desc day24;


INSERT INTO day24
VALUES
(
  001
, "김일일"
, "010-1111-1111"
, "대한민국"
);

SELECT * FROM day24;



create user 'kosmo'@'localhost' identified by '12345';

quit

create database day25;


quit

#권한주기 (GRANT ALL모든권한 줌, GRANT CREAT, GRANT INSERT)



GRANT ALL PRIVILEGES ON hankuk.* TO 'kosmo'@'localhost';

flush privileges;


quit


create table day
(
    no int
    , name char(10)
    , tel varchar(15)
);



INSERT INTO day
VALUES
(
  011
, "일일일"
, "010-1111-1111"
);



*sqlite3

메모리에 올릴지 디스크에 저장할 지 정함
:memory:
test.db




사용자 계정: day25
비밀번호:korea
모든 권한 부여
db 생성: lite
table 구조: no, name, address, tel,etc
data 입력: 옆사람 3명 data 입력
data 조회










