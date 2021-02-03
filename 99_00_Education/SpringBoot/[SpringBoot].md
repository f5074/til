## 2021년 2월 2일 
SpringBoot 실전 프로젝트

### 제1차시

#### 1. 강의소개및 활용법

"뭔가 잘못했겠지"

반성의 시간 가지기 "무엇을 했나?", "뭐가 어려웠나?", "다음엔 어떻게 할것인가?" (계획세우기)
-> 이를 통해서 성장할수 있을 것이고, 기록하기 (매일 기록하고 반성하는 습관을 가져야함)

급한일 VS 중요한일
-> 사람은 기본적으로 급한 일 우선으로 처리하려고 한다. 급한일부터 처리하지말자 -> 무엇이 중요한가? 확인 후 처리하기

#### 2. 무엇을 만들 것인가?

1. 무엇이 문제인가? -> 불편한점 -> 분야를 선택 (ex) 버스를 타고 다니면 불편함 = Domain -> 올바른문제 찾기 -> 대박

올바른 문제 찾기는 어렵다

2. 오늘 뭐 먹지? -> Why? -> 왜 고민하나? -> 무엇이 문제인가? -> 
주변에 어떤 가게가 있는지 잘 모른다. 매일 같은 곳을 간다.
어떤 가게가 좋은지 잘 모르겠다. 기존에 방문한 사람들은 뭐라고 평가하는가?
예전에 봐둔가게가 있었는데 기억이 안난다.
가보고 싶은 곳을 기록하고 싶다.
가게에 자리가 있는지 모르겠다.
심리적으로 불편한 전화 대신 온라인으로 예약할 수 있을까?

3. 사용자 입장에서 스토리를 구성 (사용자 스토리) = 기능명세서와 같지 않을까
사용자 입장에서 기능을 서술

(사용자)는
(가치)를 위해
(기능)을 할 수 있다. 

4. 사용자는 누구인가? = 유스케이스 다이어그램과 비슷하지 않을까

고객
가게
관리자

고객은 뭘 먹고 싶은지 발견할 수 있도록 가게 목록을 볼 수 있다.
-> 뭘 먹고 싶은지 발견 이부분을 집중해서 어떻게 해야한다.
고객은 정확히 먹고 싶은 게 뭔지 확인하기 위해 가게의 메뉴를 볼 수 있다. 
고객은 좋은 가게인지 알 수 있도록 평점을 확인할 수 있다.
고객은 선택의 폭을 좁히기 위해 가게 목록을 분류에 따라 볼 수 있다.
고객은 나와 남을 위해 가게에 평점과 리뷰를 남길 수 있다.
->'나와 남을 위해'
고객은 나중에 찾아보기 쉽도록 가게를 즐겨찾기에 추가할 수 있다.
고객은 가게에서 기다리지 않기 위해 가게에 인원 메뉴를 에약할 수 있다.

가게는 관심있는 고객을 받기위해 예ㅑ약요청을 확인할수있다.
가게는 더나은 고객 서비스를 위해 예약요청에 응답할수있다.

관리자는 고객이 서비스를 쓸수있도록 가게정보를 등록할 수 있다.


인간의 욕심은 끝이 없고, 요구사항 변경은 반복된다. -> 계획을 세우자.
(요구사항의 변경은 좋은 신호)


* 어떤사람이 어떤가치를 얻을 수 있는지를 항상 생각하는 습관을 가지자

### 3. 어떻게 만들 것인가?

도메인 모델링
Restaurant
Menu Item
Food & Beverages
User 정보 (고객, 사장님, 관리자)
Favorite
Review
Reservation

시스템 아키텍처 Sysytem Architecture
* 제약조건
- 웹 Web
- Mobile에서도 사용가능 (모바일 어플리케이션)

다른부분이 존재, 공통인 부분 기능은 공통
-> Front-end, Back-end

Multi-tier Architecture 여러개의 계층으로 나눠서 시스템을 구성

3-tier Architecture
Presentataion, Business, Data Source
-> Front-end, Back-end, DB
-> HTML/CSS/JS , REST API, DBMS

Back-end에 집중

*Layerd Architecture
-UI Layer
-Application Layer
-Domain Layer
-Infrastructure Layer
프로그램의 복잡도를 낮추기 위해서 

*기술
Java
Spring Boot
REST API

#### 4. Hello, World

Spring Initializr
Demo


Spring.io
Quick start

Gradle
Java
2.1.5

option

Group kr.co.fastcampus
Artifact eatgo
설명 eatgo
Desce Eat Go Project
Jar , 8


Depencencies

Web -> Spring Web Starter
devtools -> Spring Boot DevTools
lombok -> Lombok


Gererate the project


1. 압축풀기
2. 프로젝트 실행
3. IntelliJ 설치


Refactor Rename 

README.md

interfaces
WelcomeController

* devTools가 알아서 재시작함

* test를 활용해야하는 이유


#### 5. Test Driven Development
- 테스트 주도 개발  = 목표 주도 개발 = 사용자 중심 개발 = 인터페이스 중심 개발
(목표를 달성했는지 테스트)

* TDD의 목표 
1. 올바르게 작동하는 깔끔한 코드를 만드는게 목표

Refactoring
Test Code 작성
Test First

TDD의 과정
Red (실패하는 코드)
Green (Add 가능하도록)
Refactoring (x + y 등을 구현해서 실행하도록)

실행하는게 오래걸릴때 TDD를 활용


* Demo

Restaurant

Go TO > Test

*Tip ctrl + shift 로 매서드 위치 변경 




#### 6. REST API

다양한 환경 지원

서로다른 Front-end
하나의 Back-end

Create
Read
Update
Delete

POST
GET
PUT/PATCH
DELETE

URI 
URL (Uniform Resource Locator)


* Collection 역할
Read(List), Create

ex http://host/restaurants/

* Member 역할
Read(Detail), Update, Delete


ex http://host/restaurants/{id}



* JSON 

* APIs
가게목록
GET /restaurants
GET /restaurants/1
GET /restaurants/{id}

가게추가
POST /restaurants

가게수정
PATCH /restaurants/{id}

가게 삭제
DELETE /restaurants/{id}


#### 7. 가게목록
실제 구현

#### 8. 가게상세 -1


#### 9. 가게상세 -2


#### 10. 의존성 주입











