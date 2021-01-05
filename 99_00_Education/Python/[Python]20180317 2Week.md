*1교시 9시30분

*anaconda prompt
    (base)는 가상화가 되어있다는 의미임
    
    deactivate 가상화해제
    
    activate
    
    ipython을 사용하면 jupyter note 가 실행됨
    ipython 종료는 quit


*파이썬
    platform은 기반 이므로 os
    객체    
        C,C++ => Java
        개체지향 객체지향
        개체 > 객체 > 클래스
    변수    변할 수 있는 수, 이름
    함수    sin(100) , 매서드 , 이름()
    매서드 = 방법(처리)
    
    long없어지고 int
        int = 4byte = (1byte=8bit) 2 4 x 8  2의 31승  0~31
        long = 8byte            2 8 x 8  2의 63승


*자바와 파이썬        
        자바            파이썬
    System.out.print()        print("")
    클래스    객체 매서드명        매서드 - object 상속할 필요없음

    directory = folder


    매서드모이면 모듈프로그램
    file = 모듈 = 프로그램순서

* cmd

    import os     - operating system, 모듈명
    
    dir(os)        - 쓸 수 있는 모듈이
    


* 접근제한자
    1. 자기자신 __모듈명 (외부x)
    2. 자기자신 + 다른class _모듈명    (외부o)
    3. 모든 clss     모듈명 (누구나)

*다른언어
    ;이 없으면 문장이 이어진다는 의미


*자료형 : int, float, bool, none
*자료구조형:     list[] 순서형      수정o    [행] [열][행]  [면][행][열]
        dictionary {}    수정o    
        튜플()         수정x  DB와 같이 중요한 자료
        집합Set






*2교시 11시 20분


*1.제어문
    mystock = "Naver"  -  Naver를 mystock에 할당
    
    bool(0)

*2.논리연산자
    AND OR NOT     -    |  Pipe(연결) 이라는 의미

    
    A     B    AND    OR    NOT
    0    0    0    0    1
    0    1    0    1    0
    1    0    0    1    0
    1    1    1    1    0

     & 하나일때와 && 두개 일때
        & 하나면 맨앞이 거짓이어도 뒤에도 판별하나 && 두개면 맨 앞이 거짓이면 판별 안함

grade = 4.3
register = 7
(4.0 <= grade) and (register >=5)



*3.조건문
    if 조건식:
        문장

    조건식 뒤에는 반드시 : 이 붙는다     - 클래스명 뒤에도 : 이 붙음


price = 123
if price >=100:
    print("Buy 10")


price = 123
if price <=100:
    print("Buy 10")


    input() 수동입력으로 값 입력하도록 함     - scan, scan f, input stream 과 같음



#coding:euc-kr
grade = float(input("총 평점을 입력해 주세요: "))

if grade >= 4.3:
    print("당신은 장학금 수여 대상자 입니다")
    print("축하합니다")
    
print("열심히 공부하세요.")   


*3교시 12시20분

* 파이참

    파일명 첫번째는 영문명
    
    if 조건 :
    elif 조건 :




*turtle

     import turtle     -os
     t = turtle.Turtle()
    객체생성      모든것 의미  - 모듈명: 모두소문자

    class     - 첫글자가 대문자
    (x,y)      - 첨자,매개변수
    매서드는 소문자

    
    *자바
    Java = new 생성자     - 클래스명 ) 객체명= new class명()
                    객체명 = 클래스명()

    
    호출 => 객체명.매서드명()
        객체명.변수명


    penup() 펜을 들어올림
    goto 이동하라

        
        |y
        |
        |
        |
        |
      ---------------------x
        |
        |
        |
        |
        |
        |
    

★모듈이랑 같은 이름은 하지 않음 https://soooprmx.com/archives/2897


4교시 14시00분

*터틀 임의의 좌표값을 입력하여 원하는 원 그리기

    

*반복문

    for 변수 in 순서형 자료:
        문장


    break
    continue



ist = [1,2,3,4,5,6,7,8]
for i in ist:
    if i % 2 == 1 : continue
    if i == 6 : break
    print(i, "번 출력됨")




for item in range(1,11,2):
    total = total + item
    print(item)

print("1부터 10까지 합은", total, "입니다.")



*dictionary and set
    집합의 경우 랜덤처리가 됨

*range
    print(list(range(1,10)))
    제어문이 아니고 매서드임



*while


*함수

    print()     호출 내장함수 (기본제공)
            외장함수(정의=def)

def Test():


        
    return값이 없을 때


cpu, memory중 메모리에 저장됨

모듈화시키고 저장해서 써야 언제든지 사용해서 쓸 수 있음


*파이썬 내장함수
    변수
    매서드
    Program    -> import


    
math
