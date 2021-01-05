
* 파이썬 설치
https://www.python.org/

*명령어 실행
    python3.6
        print("홍길동")
        print('who')



    cmd
        python
        cd\           - 무조건 시작폴더로 이동
        cd python    - 현재 폴더에서 하위폴더로 이동(change directory의 약자)
        cd python36-32     - (cd python*)
        dir        - 디렉토리 목록 표시
        tree/F        - 탐색기 역할을 함  (주로 사용할 폴더는 Lib, Scripts)


*필요한 라이브러리 설치방법

    cmd
        pip3 install test     (3.x,2.x 방식일 때는 이방식)
        pip install test    (2.x 방식일 때는 이방식)
        uninstall test        삭제용



*Lib폴더

    폴더에는 80개 이상이 설치되어 있어야 함

    접근제한자
                                외부접근가능여부    파이썬
        public         공통                    O        _없음
        protected    현재클래스, 상속 클래스            O        _
        private        단독 Class (자기자신)            X        __

        파이썬은 접근제한자가 없기때문에 _로 표시함

        우리가 모듈을 생성한다면 Lib에 저장이 됨
    
        __가 붙어 있으면 python이 쓰기에 우리는 사용 못함



*모듈 사용법

    cmd

        import she 에러남

    python3.6
        import abc     - 에러는 안나고 다음으로 넘어감 (해당모듈 열어줘와 같음)
        dir(abc)    - 해당모듈 표시해줘와 같음





*파이참 설치

https://www.jetbrains.com/pycharm

* 다운로드

    Community 다운로드
    경로 변경하면 안됨
    32 64 전부 체크


* 파이참 새 프로젝트 추가

    test 프로젝트 생성
        Include폴더는  다른API 삽입으로 사용
        마우스 오른쪽 >new > python file > 123 (이름) 생성
        print("홍길동")
        Run > 123.py 실행
    
        print 홍길동
        Run > 123.py 실행 시 오류


    * 라이브러리 추가
        File > Settings > Project > Project Interpreter > +버튼 클릭 > pyqt5-tools > Install Package
        pyqt는 그래픽 툴 같은 것

*파이썬 프로그램 설치방법
    1. pip 명령        반영구적으로 저장
    2. File > interpreter    해당프로젝트에만 저장
    3. conda(Anaconda)     

    파이썬에 추가로 모듈이 설치 안되어 있다고 할때는 여기부분에서 문제를 확인



*아나콘다 다운로드 및 설치
    
    분석을 전문으로 하기 위한 프로그램
    32비트가 없음 64비트만 있음
    설치한 파이썬에 맞게, 설치안하면 파이썬부터
    Just me 혼자 All user 는 전부
    폴더명 바꾸지 않기
https://www.continuum.io/

*메모장으로 py 실행파일 만들기

    #coding:euc-kr        -utf-8
    print("홍길동")
    print('홍길동')
    test.py로 저장함
    저장 후 cmd > cd python\py* > python test.py (파이썬이 설치된 폴더에서 만 실행 됨)





3교시

* 라이브러리  
    Tkinter
    Django     -톰캣과 비슷
    등등
    

*웹크롤링

    파이썬을 이용하여 원하는 자료만 찾아옴
    beautiful

*함수






    Split    공백값
    Find    가장 앞의글자
    Replace    특정글자
    Strip    특정단어 제거 L.Strip R.Strip
    등등


*워드 클라우드 word cloud
http://wordcloud.kr/

*아나콘다 네비게이터
    

*아나콘다 프롬프트
    


*아나콘다 쥬피터노트북        -파이참과 같은 방법
    new     python3 print("홍길동")
    실행방법은 Run
*아나콘다 스파이더
    텐서 플로우에서 사용하는

*아나콘다 prompt
    JVM     -- 자바가상머신
    PVM     -- 파이썬가상머신(파이참에서 저장안해도 작동되는 이유 자동저장됨)
    MVC 와 비슷한 MVT
    

    activate 폴더명      -activate test
    deactivate        -비활성화
    



*파이썬 실행절차
    파이썬 소스파일 > 바이트코드 > 파이썬 가상머신

*파이썬 설치 시 pip install pyqt5-tools        -pip (cpu 사용안하고 메모리를 사용, 자바 역시 memory)


* 파이썬 스크립트를 실행하는 방법
    print("한국" 하고 실행시 ...이 나오는건 아직 명령어가 완료 안되었다는 소리와 같음
    1+2+3    
    (0<1) and (2<3)        - 실행 시 True 참 1, False 거짓 0 가 나옴
                - && 첫번째 조건이 참이어야 다음 비교 &
    for I in range(10):
    print("line{}".format(i))    - 명령은 tab으로 넘겨야 함

    for i in range(10):
        print("line{}".format(i))


    for i in range(10):
        print("line{}".format(i))


* 프로그램을 파일로 만들어 실행    
    
    #!/usr/bin/env python    - 리눅스에서는 경로는 입력할 필요가 없음, #! 일경우 선언문이라는 의미
    # helloworld.py
    print ("Hello World")


*4교시



*파이썬 들여쓰기방법
    파이썬은 4개의 공백을 사용
                

    n = 1
    name = 'kim'
    n = n + 5
    value = 1.5 + n
    print("%f is 1.5 + %d" %(value, n))

*형식

    %f format형식이란 의미  실수형으로 출력 , %d는 정수값으로 출력
    input()        - 다른쪽에서 scan 1글자 inputstream  연속     

*문자열 포맷팅
    튜플이란 파이썬에서 사용하는 자료구조

    *자료형(4가지) int float bools none

            자료구조 (자료형 확장)     
                    1. 리스트 []      라인수정가능
                    2.딕셔너리 {}     라인수정가능
                    3.튜플 ()    라인수정불가능

`        Range(10)
        Range[0,1,2,3,4,5,6,7,8,9]
        Range[1,10,3]
        Range[10]
        
        딕셔너리 key: value         - a : 100


    f="name : %s age: %d %( 'name', 29)
    print(f)


    f="x= %0.5f, y= %5.2f" %(1.234567, 9.87654321)    -전체5자리 (소숫점 포함)
    print(f)

    f="name : %s age: %d" %('name', 29)
    print(f)

    



    %s    문자열
    %r    문자열
    %c    문자(char)     -영문을 기준이기에 한글은 안됨
    %d %f    정수
    %f %F    부동소수
    %e %E    지수형 부동소수
    %g    일반형
    %o    8진수
    %x    16진수
    %%    % 퍼센트 리터럴


    %-10.2f     -숫자는 오른쪽 정렬이기본인데 이렇게 하면 문자처럼 오른쪽정렬

* format()

    앞    %    뒤
    (형식)          (값)
    
    print("i={0} f={1} s={2} s1={3}" .format(123, 1.12345, 'python', "python1"))


    print("name= {name} age={age}" .format(name="han", age=30))


    print("i={1} f={1} s={2} s1={2}" .format(123, 1.12345, 'python', "python"))


    print("name= {name} age={name}" .format(name="han", age=30))
    print("name= {age} age={name}" .format(name="han", age=30))


    print("name= {age} age={name}" .format(irum="han", nai=30))    - 에러가 발생함
    print("name= {irum} age={nai}" .format(irum="han", nai=30))


*변수 만드는 방법

    변수 이름 = 데이터    int x; 대신 x만 하면 됨 입력하는 값에 따라 알아서 결정 됨

*변수 명명 규칙

*자료형

    
    int(7.5)

    2e5

    float(1.6)

    float("1.6")

    bool(0)

    bool(-1)

    bool("false")

    a=None
    a is None


    정수 나누기 정수는 실수


*자료구조
    List
    Tuple
    Dictionary
    Set        집합{}

*파이썬은 10진수만 씀

    0b1010
    0o12
        

*연산자
    제곱은 **
    나머지 버리는 것 //


    print('Hello, Python')
    print("Hello, Python")
    print('''Hello, Python''')
    print("""Hello, python""")





*6교시

https://www.diffchecker.com/diff
notepad++
hp로드러너



*줄바꿈 방법
    '''
    """

*문자열 곱하기
    a = "python"
    a * 2
    


*문자열 인덱싱과 슬라이싱
    a = "Life is too short, You need Python"
    a[3]
    a[8]    -공백도 1글자 취급 함

    a[-1]

    
    a = "Life is too short, You need Python"
    b = a[0] + a[1] + a[2] + a[3]
    print(b)



a = "Life is too short, You need Python"
b = a[11] + a[12] + a[13] + a[14] + a[15] + a[16]
b




a[0:5]
a[19:]
a[:17]
a[:]


*문자열 포매팅

*리스트 자료형
    [] () {}
    i =[1,2,3,[4,5],(5,6,7),{9:0,10:115}]

*배열
    1차원 []
    2차원 [[]]
    3차원 [1,'L", [  []]]

*배열 가져오기
    listList[2][1]    2행 1열    
    print listListList[2][2][1] 2면 2행 1열

*리스트 슬라이싱
    리스트요소변경
        listNum = [1,2,3,4,5]
        listNum[2] = 100
        listNum

    리스트요소삭제



        listNum = [1,2,3,4,5]
        listStr[1:3] = []
                print listStr

    listNum = [1,2,3,4,5]
    del listNum[1]
    listNum


    del listNum[1]
    print listNum


    리스트요소 변경
        listNum = [1,2,3,4,5]
        listNum[1:3] = []
               print listNum


    listNum = [1,2,3,4,5]
    listNum[1:3] = 'x'
    listNum


    리스트 길이 값

    listtest=[1,2,3,4,5]
    len(listtest)
    

listtest=[1,2,3,4,5]
min(listtest)


listtest=[1,2,3,4,5]
max(listtest)



listtest=[1,2,3,4,5]
listtest[0]+ listtest[2]

listtest=[1,2,3,4,5]
listtest.count(1)

a = [1,2,3]
a.append(4)
a



a= [1,4,3,2]
a.sort()
a


a = ['a', 'c','b']
a.reverse()
a


a = [1, 3, 4, 2]
a.index(1)


a = [1,2,3]
a.insert(0,4)
a


a = [1,2,3]
a.insert(2,2.5)
a




a = [1,2,3,4,5,6]
a.remove(3)
a


a = [1,2,3,1,2,3]
a.remove(3)
a


a = [1,2,3]
a.pop()
a



a = [1,2,3,1]
a.count(1)




*리스트 복사


a_new = [1,2,3,4]
a_new_list = a_new[:]
print (a_new_list)
test = a_new_list[:]
print(test)


*리스트 병합


a_new = [1,2,3,4]
a_new_list = a_new[:]
print (a_new_list)
test = a_new_list[:]
print(test)
a_merge_list = a_new_list + a_new_list
print(a_merge_list)




* 튜플은 그 값을 바꿀 수 없음
  튜플은 함수가 없음


* 딕셔너리
    키와 값저장

* Set

합집합 |
차집합 -



파이참활용
















































