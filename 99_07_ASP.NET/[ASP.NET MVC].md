[ASP.NET MVC] 1. ASP.NET 소개 - .net Framework, .net Core
https://www.youtube.com/watch?v=Y_X4A0P06Os

[ASP.NET MVC] 2. ASP.NET MVC Core 프로젝트 만들기
https://www.youtube.com/watch?v=mMIkH6T3euA

[ASP.NET MVC] 3. _Layout
https://www.youtube.com/watch?v=86ehigeqri8

[ASP.NET MVC] 4. Razor Syntax
https://www.youtube.com/watch?v=GRHy0FgrJrw

[ASP.NET MVC] 5. Controller에서 View로 데이터 전달하기
https://www.youtube.com/watch?v=TTQW2ou3w7c

[ASP.NET MVC] 6. EntityFramework Core 소개 및 MS SQL Server
https://www.youtube.com/watch?v=7PTFfqov1wY

[ASP.NET MVC] 7. EntityFramework Core로 데이터베이스 생성하기
https://www.youtube.com/watch?v=MNmcTeEv07A

[ASP.NET MVC] 8. 회원가입 기능 만들기
https://www.youtube.com/watch?v=negMazMl7WQ

[ASP.NET MVC] 9. Visual Studio 2017 설치 및 2015 프로젝트 업그레이드
https://www.youtube.com/watch?v=tyx4Vyj5a_U

[ASP.NET MVC] 10. 로그인 입력 Form 만들기
https://www.youtube.com/watch?v=492E2t0gxEg

[ASP.NET MVC] 11. 로그인, 로그오프 기능 만들기
https://www.youtube.com/watch?v=G5AxF9pt4Pw

[ASP.NET MVC] 12. 게시판 리스트 출력하기
https://www.youtube.com/watch?v=ryf9ikInHsQ

[ASP.NET MVC] 13. 게시물 추가하기
https://www.youtube.com/watch?v=6wA9Ilhj6sA

[ASP.NET MVC] 14. 게시물 상세보기 페이지 만들기
https://www.youtube.com/watch?v=CbnoRYXgw0c

[ASP.NET MVC] 15. 자바스크립트 텍스트 에디터 적용하기 (feat. Trumbowyg)
https://www.youtube.com/watch?v=oOFNh0KM7kU

[ASP.NET MVC] 16. 자바스크립트 텍스트 에디터 이미지 업로드
https://www.youtube.com/watch?v=7cKA-lEqDjM

[ASP.NET MVC] 17. Enterprise Architecture 프로젝트 구성하기
https://www.youtube.com/watch?v=dKvCZUec100

[ASP.NET MVC] 18. Dependency Injection, IoC Container 사용하기
https://www.youtube.com/watch?v=GWgXbQEOi9Y

[ASP.NET MVC] 19. MVC5에서 Unity Container를 이용한 Dependency Injection
https://www.youtube.com/watch?v=ac-IQsmaY3M

[ASP.NET MVC] 20. appsettings.json를 통한 ConnectionString 처리하기
https://www.youtube.com/watch?v=UACohTbIfpM

[ASP.NET MVC] 21. async, await 비동기 처리 프로그래밍 구현하기
https://www.youtube.com/watch?v=T-XskK2kBmg

[ASP.NET MVC] 22. ASP.NET Core Identity 소개
https://www.youtube.com/watch?v=t9ApesVOalw

[ASP.NET MVC] 23. Identity 생성 테이블 PK 타입 변경하기
https://www.youtube.com/watch?v=JnA29XdZnxg

[ASP.NET MVC] 24. ASP.NET Core Identity 모델 클래스 설명
https://www.youtube.com/watch?v=DW7Sl9Q6HBA

[ASP.NET MVC] 25. AccountController 소스코드 분석하기
https://www.youtube.com/watch?v=_GZHPPdM3OQ












Chapter 6

ASP.NET MVC

C# DB 통신

1. ADO.NET
-Winform, Classic ASP

2. Enterprise Library 5
- 쿼리문을 직접 작성 -> 값을 처리
- Logging

단점: 1,2의 경우쿼리문을 직접 작성으로 오류 발생의 소지가 높음.


#ORM
- Java JPA를 기준으로 하이버네이트
- C# EntityFramework 1.0 ~ 7.0
     Mapper

#게시판 프로젝트
준비물 : Asp.net MVC, MS SQL, EntityFramework

EntityFramework 1.0 ~ 6.0까지는 .net Framework (풀닷넷)에 사용
ASP.NET Core는 7.0부터 EntityFramework Core


ASP.NET Core 1.x
EntityFramework Core 1.1

# 개발방식 EntityFramework

1) Database First 방식
- Database DBA(데이터베이스 관리자)
- 설계 완료, 물리적 데이터베이스도 모두 완성된 상태.
=> Database 기준으로 Appication 개발


2) Code First 방식
- Database 기준으로 Appication 개발 역으로
=> Code -> Database 생성해 Appication 개발

MS SQL 2014, 2016
1) SQL 엔진
2) Management Studio 14, 16

MySQL 과 비교
1)MySQL 엔진
2)Workbench


# MS SQL SA 비밀번호 설정 이유
1) Web Server와 SQL Server가 다른 컴퓨터일 경우
http://db.example.com:1433
 


Chapter 7

ASP.NET MVC

# 1. 프레임워크 업그레이드
-ASP.NET MVC Core 1.1    (##NuGetPackage에서 업데이트, www.nuget.org ,메이븐리파지토리와 비슷 https://mvnrepository.com/)

# 2. EntityFramework Core 설치 ( ##Microsoft.EntityFramework core, Microsoft.EntityFramework core.Server, Microsoft.EntityFramework core.Tools 설치)

CodeFirst 방식으로 Model Class -> DBContext -> 실제 테이블을 생성

User 모델 -> 사용자
Note 모델 _> 게시판

User
사용자 번호(PK)
사용자 이름
사용자 ID
사용자 Password

Note
게시물 번호(PK)
게시물 제목
게시물 내용
작성자 (숫자 - 사용자번호)

# 3. DBContext 생성 -> Table 생성할 수 있는 코드를 작성.

(##DataContext만듦)
1. 
    public class AspnetNoteDbContext : DbContext
    {
        public DbSet<User> Users { get; set; }
        public DbSet<Note> Notes { get; set; }
    }

2. 
        protected override void OnConfiguring(DbContextOptionsBuilder optionsBuilder)
        {
            base.OnConfiguring(optionsBuilder);
        }

3. connectionstring https://www.connectionstrings.com/sql-server/

4. 비주얼스튜디오의 상단 보기 >Server Explorer 사용해서 
 Data Source=(localdb)\v11.0;Initial Catalog=master;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False
    
5. 보기 > 다른 창 > 패키지 관리자 콘솔
add-migration FirstMigration
update-database

            
# 4. DBContext -> 실제 테이블을 생성 







xml주석 사용방법 ///
ctrl + 위, 아래
using 문에서 ctrl + . 사용하지 않는 것은 제거
클래스 조인방법 public virtual, virtual을 권장함




chapter 8


사용자 로그인, 회원가입

회원가입 -> 사용자 정보 입력 -> DB 저장.

로그인 -> 사용자 정보를 입력 -> 사용자 정보를 보유


spring security 예제와 같은 것

ASP.NET Identity(Securiry)
-사용자 로그인(인증)
-사용자 Role(Admin,User,Poweruser)
-SMS 인증, Email 인증


Session 이용한 로그인, 회원가입 구현


로그인 2가지 방법론.
# 1. Session
-웹 서버가 사용자 정보를 메모리에 담아놓아 보안성이 높다.(장점)
-웹 서버 메모리 부하가 높아진다.(단점)

# 2. Cookie
-웹 서버 로그인 -> 사용자 정보 -> 브라우저 전달 -> 쿠키로 저장
-웹 서버의 부하가 낮아진다.(장점)
-보안성이 낮아진다.(단점)

# 결론: Cookie 
-Cookie를 암호화 -> 복호화 / 위변조의 위험
-SSL인증서를 사용하여 위변조의 위험을 막음

# SSL 
- 유료 100만원 20만원 (매년), 무료



GET : DB에서 받음
http://www.example.com/api/GetBookList?bookNo=1

POST : DB에 전달
http://www.example.com/PostUser

AccountController.cs
Register.cshtml



Chapter 9

.net core 2가지 트랙

# 1. LST (Long Term Suprot)
느리게 업그레이드 .net core
------------1------------1------------1------------1------------1

# 2. Current
 빠른 업그레이드 .net core
----1----1----1----1----1----1----1----1----1



Chapter 10

로그인

Linq, 매서드 체이닝
https://docs.microsoft.com/ko-kr/dotnet/csharp/linq/


람다식에서 A Go to B
u => u 


메모리 누수를 방지하기위해서 ==  사용하지 않기
                    //var user = db.Users.FirstOrDefault(u=>u.UserId == model.UserId && u.UserPassword == model.UserPassword);
                    var user = db.Users.FirstOrDefault(u => u.UserId.Equals(model.UserId) && u.UserPassword.Equals(model.UserPassword));


# 로그인시 Validation Required가 다있어야 되므로 없어서 인증이 안됨
Model => 기본 엔티티 클래스

User
-> UserNo
-> UserName
ID,Password

ViewModel -> 뷰(View)를 위한 모델
MVC(Model,View, Controller)
WPF(MVVM)


# ModelState 상태 메시지 보기
asp.net core asp-validation-summary

https://docs.microsoft.com/ko-kr/aspnet/core/tutorials/first-mvc-app/validation?view=aspnetcore-2.1



Chapter 11

# NuGet Package -> Microsoft.AspNetCore.Session 설치



ASP.NET MVC -> IIS(웹서버)  = 아파치
-WebAPI 압축기능 이용시 둘다 설정해줘야함

ASP.NET Core -> 리눅스, 윈도우, MacOS


# Startup.cs 에서 미들웨어 형태로 사용


            services.AddSession();
            app.UseSession();

로그아웃 시 세션에서 지움


Chapter 12


게시판 리스트 출력




알트+ 쉬프트 아래 
쉬프트 + delete


Chapter 13

게시물

로우 12개 중에 col-lg-4해서3등분


asp.net core HttpContext.Session

https://benjii.me/2016/07/using-sessions-and-httpcontext-in-aspnetcore-and-mvc-core/


Chapter 14

게시물 상세보기 페이지 만들기

http://www.example.com
http://www.example.com/{noteNo}
http://www.example.com/Note/Detail?noteNo=1


# Trumbowyg  자바스크립트 에디터

github javascript editor


https://alex-d.github.io/Trumbowyg/?utm_source=tool.lu


https://summernote.org/


Chapter 15

NPM Node Package Manager

Node.js

# bower
프론트엔드 패키지 매니저

CLI  (Command Line Interface)

trumbowyg 사용

https://alex-d.github.io/Trumbowyg/documentation/


Superscript: 위첨자


Chapter 16

자바스크립트 텍스트 에디어 이미지 업로드

ctor 탭 2번



@기호로 이거를 그대로 인식하도록
http://ko.cppreference.com/w/cpp/language/escape


@기호로 이거를 그대로 인식하도록

trumbowyg.upload.js의 파일 수정

serverPath
fileFieldName 


https://alex-d.github.io/Trumbowyg/?utm_source=tool.lu

재정의

한글변환


# 비동기적 처리하는 Async


# https://docs.microsoft.com/en-us/aspnet/core/security/authentication/identity?view=aspnetcore-2.1&tabs=visual-studio%2Caspnetcore2x



Chapter 17

Enterprise Architecture c#





# Enterprise Architecture
1.  대형 솔루션, 프로그램 개발할 때 사용하는 프로젝트 구성 방식 - 큰 틀을 구성
        2. 다양한 플랫폼을 지원하는 재사용성이 높은 코드를 작성하는 방식
3. 



Presentation Layer :  WPF, WinForm 

Business Layer : Validation Check

 Cache
-목적: 자주 불러오는 데이터를 메모리에 담아서 출력하는 것
-장점: 컴퓨팅 비용 감소, 데이터를 출력하는 속도가 증가
-단점: 메모리를 많이 필요로 하게 됨


Data Access Layer :   DB에 접근


# Class Library를 사용하여 Business, Data Access layer를 만듦


# DLL

# 클래스 라이브러리 종류
1.  .net Framework
2.  .net core
3.  .net Framework(portable) -Xamarin
4.  .net Standard

ASP.NET 닷넷 프레임워크 프로젝트이고 data 클래스 라이브러리 (닷넷 코어) 이면 접근이 안되는 경우도 있음

# .NET STANDARD로 통합





 IDataAccessLayer



# 각 Tier 별로 접근 순서

클라이언트 버튼 -> ASP.NET MVC 리스트 출력 호출 -> BLL -> IDAL -> DAL ( -> BLL -> MVC )


오라클로 변경시에는  Oracle.DAL 만 바꿈

Chapter 18

의존성 주입 (Dependency Injection):

프로그래밍에서 구성요소간의 의존 관계가 소스코드 내부가 아닌 외부의 설정파일 등을 통해 정의되게 하는 디자인 패턴

제어반전

IoC (Inversion of Control)

프로그래머가 작성한 프로그램이 재사용 라이브러리의 흐름제어를 받게되는 소프트웨어 디자인 패턴을 말한다.

IoC Container

객체를 프레임워크에서 간접적으로 생성, 소멸 시켜주는 컨테이너를 뜻함.


# MVC 6 - 의존성 주입을 할 수 있는 3가지.

1.  services.AddSingleton<T>();  - 웹사이트가 시작하면 웹사이트가 종료될 때까지 메모리 상에 유지되는 객체 주입
2.  services.AddScoped<T>(); - 웹사이트가 시작되어 1번의 요청이 있을 때 메모리 상에 유지되는 객체 주입
3.  services.AddTransient<T>(); - 웹사이트가 시작되어 각 요청마다 새롭게 생성되는 객체 주입

# 싱글턴 패턴
https://ko.wikipedia.org/wiki/%EC%8B%B1%EA%B8%80%ED%84%B4_%ED%8C%A8%ED%84%B4

http://jusungpark.tistory.com/16

1번 사용자 -> UserBll 사용하면 계속 남아 있음


#AddScoped
https://docs.microsoft.com/ko-kr/aspnet/core/fundamentals/dependency-injection?view=aspnetcore-2.1


Chapter 19

# Unity Container

https://docs.microsoft.com/en-us/previous-versions/msp-n-p/ff647202(v=pandp.10)


# ioc Container c#


누겟패키지 설치
Unity.Mvc


콘트롤 + home 누르면 맨위로 올라감
콘트롤 + tab
콘트롤 + 위 아래
탭에 휠누르면 닫힘

Chapter 20

appsettings.json을 통한 ConnecitionString 처리


리샵퍼사용하면 interface 원하는 순서로 바꿀수있음

# DataAccessLayer에서 누겟패키지 두개 추가
 Microsoft.EntityFrameworkCore
Microsoft.EntityFrameworkCore.SqlServer


# connectionstring 
https://www.connectionstrings.com/sql-server/


# 패키지 매니저 콘솔에서 기본프로젝트는 Note.DAL로

# 누겟 패키지 Microsoft.EntityFrameworkCore.Tools  

add-migration NoteDb
update-database

# connectionstring위치를 appsettings.json에 입력

Startupp.cs


Chapter 21

# 스레드
https://ko.wikipedia.org/wiki/%EC%8A%A4%EB%A0%88%EB%93%9C_(%EC%BB%B4%ED%93%A8%ED%8C%85)


# Winform, WPF
Thread

1.UI Thread
2.Background Thread

-for, foreach, 파일입출력

# 동기적 프로그래밍
Method1();    3초
Method2();    3초
Method3();    3초
- 총 9초 소요

# 비동기적 프로그래밍

Method1();    3초
Method2();    3초
Method3();    3초

- 총 3초 소요

C# 비동기적 프로그래밍을 위한 키워드

1. async, await, Task, Task<T>
 - C# 5.0 , 닷넷 프레임워크 4.5


# 테스트 방법 - 전통적인 방식
            Stopwatch watch = new Stopwatch();
            watch.Start();
            var test1 = Test1Async();
            var test2 = Test2Async();
            var test3 = Test3Async();
            var result1 = await test1;
            var result2 = await test2;
            var result3 = await test3;
            watch.Stop();
            var result = watch.ElapsedMilliseconds;

# 테스트 방법 - 새로운 방식 Visual Studio Diagonositcs Tools


# 비동기적으로 처리하는 것이 과연 성능상 좋아진 것 일까?
성능상 좋아진 것이 아니라 남는 것을 사용하는 것




Ctrl + mm 누르면 최소화됨



  Chapter 22

# ASP.NET Core Identity

- 로그인, 로그아웃, 개별 인증(관리자, 일반사용자)
- 일반 사용자(나이가 19세 이상)


# Identity 테이블 구조
1. dbo.AspNetUsers         => ApplicationUser (유저 클래스)

- ID, 비밀번호, 사용자 이름

2. dbo.AspNetRoles         => ApplicationRole  (룰 클래스)

- 이 웹사이트에 회원 분류
- 슈퍼 관리자, 관리자, 특별 사용자 , 일반 사용자

3. dbo.AspNetUserRoles     =>
    
- 1번 사용자(PK 1) -> 관리자(1)
- 2번 사용자(PK 2) -> 일반 사용자(4)

4. dbo.AspNetClaims        => 5명의 사용자 -> 일반 사용자(Role)
- 2명이 나이 20세 미만 -> 20세 미만은 특정 게시판 진입금지 Age 20    
[HttpGet, Authorize(Claims ... Age >20]

5. dbo.AspNetRoleClaims    =>

- 관리자 - 1등, 2등, 3등


6. __EFMigrationsHistory 는 마이그레이션 이력관리

7. dbo.AspNetUserLogins => 외부로그인 Oauth1.0 / 2.0

8. dbo.AspNetUserTokens => 외부로그인 관련


Chapter 23

Identity 생성 테이블 PK 타입 변경하기

# ApplicationDbContext 설명

# 


저같은 경우는 AccountController 랑 ManageController부분에 메일발송부분 user.Id 이게 숫자형으로 변경되어서 .ToString() 해서 해결하고 startup.cs. 는 services.AddIdentity<ApplicationUser, ApplicationRole>() .AddEntityFrameworkStores<ApplicationDbContext>() .AddDefaultTokenProviders();

https://docs.microsoft.com/en-us/aspnet/core/security/authentication/identity-primary-key-configuration?tabs=aspnetcore2x&view=aspnetcore-2.1











