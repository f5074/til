# 파이썬 tensorflow
## module 'tensorflow' has no attribute 'placeholder'
https://stackoverflow.com/questions/37383812/tensorflow-module-object-has-no-attribute-placeholder


## 파이썬 정렬

http://ejklike.github.io/2017/03/04/sorting-algorithms-with-python.html

## 파이썬 리스트 정렬

http://andrew0409.tistory.com/65


## 파이썬 코딩

https://programmers.co.kr/competitions/82/2018-%ED%95%98%EB%B0%98%EA%B8%B0-%EA%B3%B5%EC%B1%84-%EB%8C%80%EB%B9%84-%EC%BD%94%EB%94%A9%ED%85%8C%EC%8A%A4%ED%8A%B8-%EC%8B%A4%EC%A0%84-%EB%AA%A8%EC%9D%98%EA%B3%A0%EC%82%AC-1%ED%9A%8C



## Python Mouse and Keyboard Control
https://wikidocs.net/13959


## python E-mail

https://code-examples.net/ko/q/550e8
https://codehandbook.org/how-to-read-email-from-gmail-using-python/

http://yumere.tistory.com/38



## 파이썬 크롤링 한글깨짐 해결방법
http://ourcstory.tistory.com/78

변경전
soup = BeautifulSoup(document, 'html5lib')
변경후
soup = BeautifulSoup(document, 'html5lib', from_encoding='utf-8')

## 확장모듈 검색
https://www.lfd.uci.edu/~gohlke/pythonlibs/

## Crawling
https://wayhome25.github.io/python/2017/04/25/cs-27-crawling/
크롤링 위치http://kb.or.kr/p/?j=18


## 파이썬 관련 교육
https://dojang.io/mod/page/view.php?id=1062

## 웹파싱 Beautifulsoup
http://freesugar.tistory.com/44?category=757582

## winauto
https://github.com/pywinauto/SWAPY/releases


## URL 이미지를 UI에 보여주기
https://stackoverflow.com/questions/40911170/python-how-to-read-an-image-from-a-url



## sqlite3 db to sql
https://www.sqlite.org/download.html
Precompiled Binaries for Windows
sqlite3 any.db .schema > schema.sql

https://stackoverflow.com/questions/75675/how-do-i-dump-the-data-of-some-sqlite3-tables



## pymssql 설치

https://testpypi.python.org/pypi/pymssql/2.1.4.dev4


## pymssql한글깨짐
http://wooorazil.blogspot.kr/2015/07/pymssql-pymssqloperationalerror-20017.html
http://webnautes.tistory.com/342


conn = pymssql.connect(host='',user='',password='',database='', charset='cp949')


*pymssql 필드네임 사용

http://pymssql.sourceforge.net/examples_pymssql.php
import pymssql
conn = pymssql.connect(host='SQL01', user='user', password='password', database='mydatabase', as_dict=True)
cur = conn.cursor()

cur.execute('SELECT * FROM persons WHERE salesrep=%s', 'John Doe')
for row in cur:
   print "ID=%d, Name=%s" % (row['id'], row['name'])

conn.close()




## 터틀(turtle)
##game of using turtle
https://www.youtube.com/watch?v=dfXJct6b1L8


## 매크로(Macro)
http://5kyc1ad.tistory.com/253

## 로그 (Log)
http://jusths.tistory.com/1

## PyQt5 Label에 이미지 넣기
https://stackoverflow.com/questions/2286864/how-can-i-add-a-picture-to-a-qwidget-in-pyqt4

#PyQt5 메인화면에서 버튼클릭시 다이얼로그창

https://stackoverflow.com/questions/49951049/pyqt5-how-to-open-a-new-dialog-with-button-click


## PyQt5 트리뷰

https://joekuan.wordpress.com/2016/02/11/pyqt-how-to-hide-top-level-nodes-in-tree-view/

## PyQt5 메뉴바
http://zetcode.com/gui/pyqt5/menustoolbars/


## PyQt5 트레이아이콘

https://evileg.com/en/post/68/

#PyQt5 버튼에 메뉴리스트 넣기

https://stackoverflow.com/questions/24659239/how-to-change-qpushbutton-text-and-background-color


## PyQt5 signal& slot

http://freeprog.tistory.com/327

#PyQt5 Dialog
https://wikidocs.net/7780


## PyQt5 라디오버튼

https://wikidocs.net/5237

## PyQt5 파일오픈다이얼로그
https://pythonprogramming.net/open-files-pyqt-tutorial/



## PyQt5 pyqt5 popup dialog 닫을 때
https://stackoverflow.com/questions/33945911/close-and-get-data-from-a-custom-dialog-pyqt5

.ui -> .py

C:\ProgramData\Anaconda3\Lib\site-packages\PyQt5\uic


python -m PyQt5.uic.pyuic -x C:\Users\f5074\PycharmProjects\Python\e_selenium_program\id_pw_main_ui.ui -o main_window.py


## PyQt5 pyqt5 config파일

http://ecycle.tistory.com/25
https://code.i-harness.com/ko-kr/q/878fdc


