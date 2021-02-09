## httpie in Windows

1. 파이썬 설치
-
2. 시스템 환경변수 등록
C:\Python\Python38\Scripts

3. pip install -U httpie

4. 테스트 
http GET naver.com
http GET localhost:8080
http POST localhost:8080/restaurants name=BeRyong address=Busan
http GET localhost:8080/restaurants