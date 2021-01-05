http://bluebead38.blogspot.kr/2017/06/python-exe-openpyxl-requests.html
pyinstaller -F -n WinApp.exe main_process.py

http://cafe.daum.net/_c21_/bbs_search_read?grpid=1V0Ky&fldid=eEPA&datanum=5&q=exe&_referer=V7kfJwkeLEGMZxGlgqZEmYVHqBrX2OhS
pyinstaller -w --onefile C:\Users\f5074\PycharmProjects\Python\program\program_10.py



mysql 


[WinError 10061] 대상 컴퓨터에서 연결을 거부했으므로 연결하지 못했습니다)
https://zetawiki.com/wiki/MySQL_%EC%9B%90%EA%B2%A9_%EC%A0%91%EC%86%8D_%ED%97%88%EC%9A%A9

INSERT INTO mysql.user (host,user,authentication_string,ssl_cipher, x509_issuer, x509_subject) VALUES ('%','root',password('1234'),'','','');
GRANT ALL PRIVILEGES ON *.* TO 'root'@'%';
FLUSH PRIVILEGES;






인코딩 문제
2018-11-10 08:38:25,927,'utf-8' codec can't decode byte 0xb5 in position 174: invalid start byte<class 'UnicodeDecodeError'>

http://ifyourfriendishacker.tistory.com/5


