#
자바프로그램 만들어서 jar파일로 배포하고 실행할떄 unable to access jarfile 오류
- java -jar Test.jar 로 실행
- 자바디컴파일러 프로그램으로 runable jar와 일반 jar 파일 비교해보기
JAR 실행 한 후 cmd를 화면 숨기기
https://code.i-harness.com/ko-kr/q/409ef
start javaw 
감사모드





# 톰캣 설치 에러
로컬 컴퓨터의 apache tomcat 7.0 tomcat7을 시작하지 못했습니다
Apache Tomcat 8.0 Tomcat8 서비스가 서비스 특정 오류
잘못된 기능입니다. 때문에 종료되었습니다.
msvcr71을 해도 안됨 아마도 32비트 톰캣을 64비트로 변경해서 된듯





# 전자정부프레임워크-나만의 프레임워크 만들기
1.개발환경 다운로드  https://www.egovframe.go.kr/EgovDevEnvRelease_300.jsp?menu=3&submenu=2&leftsub=2#
2.세미나 관련 자료  https://open.egovframe.org/oc/docs/pds.do
3.
smart sheet4(WBS용 유료 )
4.통합IDE 





#Java 
##자바 UI로 삭제버튼 만들때 :No enclosing instance of type ... is accessible.
The method actionPerformed(ActionEvent) of type DeleteButton must override a superclass method
https://jamong-icetea.tistory.com/65


#JAD 사용방법
##jad 사용방법 https://javacpro.tistory.com/23

##jad 다운로드 https://varaneckas.com/jad/

##jar 로 묶인파일 수정하기
https://m.blog.naver.com/PostView.nhn?blogId=hero108&logNo=220425280196&proxyReferer=https%3A%2F%2Fwww.google.com%2F



jar -uvf ITSFW-V2.1.jar ./com/itcomm/itsfw/core/database/ObjectCache.class
jar -uvf ITSFW-V2.1.jar ./com/itcomm/itsfw/core/database/ObjectCache$ExtendedFieldInfo.class

jar -uvf0 ITSFW-V2.1.jar ./com/itcomm/itsfw/core/database/ObjectCache.class
jar -uvf0 ITSFW-V2.1.jar ./com/itcomm/itsfw/core/database/ObjectCache$ExtendedFieldInfo.class





jar cvf ac.jar -u C:\ITSFW-V2.1

jar cvf abc.jar -c C:\Users\itcomm\Downloads\ITSFW-V2.1

jar cvf abc.jar -C C:\Users\itcomm\Downloads\ITSFW-V2.1

jar xvf ITSFW-V2.1.jar

jar cvfm abcd.jar META-INF/MANIFEST.MF -C foo/ .

https://priceless.tistory.com/203

1. 해당 자르파일이 있는 곳으로 도스 프롬프트를 이동

2.  jar -uvf "기존의자르명" 교체될 클래스

jar -uvf SITSFW-V2.1.jar /bin/com/itcomm/itsfw/core/ObjectCache.class

3. 이때 패키지내의 교체될 클래스의 위치를 지정해주고  교체될 클래스 파일은 해당 경로에 존재해야 한다.


jar -uvf ITSFW-V2.1.jar C:\Users\itcomm\Downloads\SITSFW-V2.1\com\itcomm\itsfw\core\database\ObjectCache.class
jar -uvf ITSFW-V2.1.jar .\SITSFW-V2.1\com\itcomm\itsfw\core\database\ObjectCache.class

jar -uvf SITSFW-V2.1.jar ./bin/com/itcomm/itsfw/core/ObjectCache.class

C:\DEV\repos\99.한국야금Upgrade\ITSFW-V2.1-ellpy\dist>jar -uvf SITSFW-V2.1.jar ./../bin/com/itcomm/itsfw/core/database/ObjectCache.class


jar -uvf ITSFW-V2.1.jar ./com/itcomm/itsfw/core/database/ObjectCache.class

jar 파일 압축하기 풀기 옵션 http://blog.naver.com/PostView.nhn?blogId=gwang39&logNo=221007458092
jar 파일에 특정파일을 업데이트 하기 https://priceless.tistory.com/203



============
빌드 출력 설명
============

기본 클래스가있는 Java 응용 프로그램 프로젝트를 빌드하면 IDE
모든 JAR 파일을 자동으로 복사한다.
프로젝트 distpath / lib 폴더의 프로젝트 클래스 경로에있는 파일. IDE
또한 각 JAR 파일을 응용 프로그램의 Class-Path 요소에 추가합니다.
JAR 파일 매니페스트 파일 (MANIFEST.MF).

명령 줄에서 프로젝트를 실행하려면 dist 폴더로 이동하고
다음을 입력하십시오.

java -jar "ITSFW-V2.1.jar"

이 프로젝트를 배포하려면 dist 폴더 (lib 폴더 포함)
ZIP 파일을 배포 할 수 있습니다.

노트:

프로젝트 클래스 경로에있는 두 개의 JAR 파일의 이름이 같은 경우 첫 번째
JAR 파일이 lib 폴더에 복사됩니다.
* JAR 파일 만 lib 폴더에 복사됩니다.
클래스 경로에 다른 유형의 파일이나 폴더가 포함되어 있으면 이러한 파일 (폴더)
복사되지 않습니다.
* 프로젝트 클래스 경로의 라이브러리에도 클래스 경로 요소가있는 경우
매니페스트에 명시된 경우 Class-Path 요소의 내용이 켜져 있어야합니다.
프로젝트 런타임 경로.
* 표준 Java 프로젝트에서 메인 클래스를 설정하려면, 프로젝트 노드를 오른쪽 클릭하십시오
프로젝트 창에서 속성을 선택하십시오. 그런 다음 실행을 클릭하고
기본 클래스 필드에 클래스 이름을 입력하십시오. 또는 수동으로
매니페스트 Main-Class 요소의 클래스 이름
============
bildeu chullyeog seolmyeong
============





VMWare 설치 

https://www.vmware.com/products/workstation-player/workstation-player-evaluation.html


CentOS 설치

https://www.centos.org/download/



1.자바프로젝트
-패키지만들기
-syso 으로 출력
-클래스만들고 get,set  만듬


https://dev.mysql.com/downloads/connector/j/

톰캣설치폴더\lib에 저장해야 connectior/j의 경로를 (이클립스의) CLASSPATH 환경변수에 추가하는 것



이클립스
https://ucampus.knou.ac.kr/ekp/mgnt/login/initMLOLogin.do
https://ucampus.knou.ac.kr/ekp/mgnt/main/index/loginBackAction.do
https://ucampus.knou.ac.kr/ekp/mgnt/valuation/retrieveMSTValuationUser.do#none
https://ucampus.knou.ac.kr/ekp/mgnt/main/index/manfrm/mgntIndexManfrmAction.sdo


자바 팁

이클립스 단축키  http://cocomo.tistory.com/21
ctrl + d 한줄 삭제
ctrl shift f 전체정렬
ctrl i    한줄정렬
ctrl z 앞으로
ctrl y 뒤로
ctrl shift o 자동임포트


이클립스 한글깨짐
http://success206.tistory.com/entry/%EC%9D%B4%ED%81%B4%EB%A6%BD%EC%8A%A4Eclipse-%ED%95%9C%EA%B8%80-%EA%B9%A8%EC%A7%90-%ED%98%84%EC%83%81


#JSP
1. 웹서버 작동원리
-톰캣 자바환경변수설정
-톰캣실행
-포트설명,conf/server.xml 웹서버 포트 80으로 변경
-web.xml index.html 시작페이지설정

C:\Temp\tomcat\conf
-server.xml > 8080 포트 80으로 변경
-web.xml > 시작페이지를 index2.html 변경


2. 웹사이트만들기
-웹프로젝트생성
-html <a> <hr>
-배포방법 export> war파일로 만들기
-톰캣에배포 ROOT파일로 변경


