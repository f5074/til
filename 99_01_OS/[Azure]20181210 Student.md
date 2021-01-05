학생용애저
https://azure.microsoft.com/ko-kr/free/students/
https://imagine.microsoft.com/ko-KR



default-allow-ftp-command  1010    21
default-allow-ftp-data    1020      20
default-allow-ftp-passive    1030      60000-63000

netsh advfirewall set global StatefulFtp enable

net stop ftpsvc
net start ftpsvc






서버2016 한국어 설정

윈도우 Settings > Time & Language > Region & language > Add a language 버튼 클릭 > 한국어 추가 > Option

> Download Language Pack  > Set as default > 서버 재부팅 또는 로그아웃



서버 관리자 > 관리 (오른쪽 위) > 역할 및 기능 추가  

서버역할까지 다음 클릭 
- 서버역할 : Web Server(IIS) 체크
웹 서버 역할(IIS) 역할 서비스 까지 다음 클릭
- 역할 서비스 : FTP 서버 체크 
확인까지 다음 클릭 후 설치 클릭







윈도우 업데이트 확인은하지만 하지않음. ( 보안업데이트가 있기에 주기적으로 해주면 좋지만, 사용자가 이용하는 시간에 서버업데이트가 되면 
문제가 되기때문에)
http://dosgame.yyartsworld.pe.kr/tip/35532


윈도 레지스트리 편집 방법
http://editorizer.tistory.com/239

즐겨찾기와 레지스트리 내보내기 기술



HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows\WindowsUpdate\AU

AUOptions

Reg_DWORD

Range = 2|3|4|5

2 = Notify before download.

3 = Automatically download and notify of installation.

4 = Automatic download and scheduled installation. (Only valid if values exist for ScheduledInstallDay and ScheduledInstallTime.)

5 = Automatic Updates is required, but end users can configure it.


NoAutoUpdate

Reg_DWORD

Range = 0|1

0 = Enable Automatic Updates.

1 = Disable Automatic Updates.







