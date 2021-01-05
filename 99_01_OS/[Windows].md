#WinServer2012R2원격데스크톱연결

*윈 서버2012 원격 데스크톱 활성화 및 포트 변경
http://t2t2tt.tistory.com/12
* Windows 원격 데스크톱 설정방법
http://gloria1004.tistory.com/145
http://iptime.com/iptime/?pageid=1&page_id=67&mod=document&keyword=%EC%9B%90%EA%B2%A9&uid=7398

*원격으로 공유기 접속관리 설정방법
 http://iptime.com/iptime/?pageid=1&page_id=67&mod=document&keyword=%EC%9B%90%EA%B2%A9&uid=7384



# IIS 서버 로깅
https://technet.microsoft.com/ko-kr/library/hh831775(v=ws.11).aspx



#Win10 Evaluation Center
https://www.microsoft.com/ko-kr/evalcenter/evaluate-windows-10-enterprise


# Hyper-V가 실행이 안될경우
bcdedit /set hypervisorlaunchtype auto



#psexec 사용
psexec \\joker21.iptime.org -u <uesr> -p <pass> /c notepad
psexec \\112.186.198.40 -u administrator cmd.exe
netsh advfirewall firewall add rule name="tcp_445" dir= in action=allow protocol=tcp localport=445
powershell사용
Enable-PSRemoting




#윈도우 서비스 등록,삭제
https://openeidos.tistory.com/3912

sc create MyPlayer3 binpath="C:\DEV\MyPlayer\Test.bat" type=share start=auto

sc create [Service Name] binpath=[Service file full path]
-> sc create MyService binpath=c:\MyService.exe
이런 식이 되는거죠.

sc create

sc create 서비스명 Displayname="표시이름" binpath="프로그램 경로" type=share start=auto

sc delete [Service Name]
-> sc delete MyService


시작 : sc start [Service Name]
종료 : sc stop [Service Name]

#윈도우 서비스 등록 2
## 로컬 컴퓨터 에서 서비스 를 시작 하지 못했습니다 오류 1053
https://skql.tistory.com/518
http://urhelper.com/zb41_urhelper/zb_urhelper.php?id=cho_computers_progs&no=103

# C# 윈도우 서비스 만들기
https://nowprogramming.tistory.com/34



#장치추가 제거
http://forensic-proof.com/archives/5945


%SystemRoot%\System32\winevt\Logs\Microsoft-Windows-DeviceSetupManager%4Admin.evtx




# Windows 단축키



시작-실행  윈 + R



2.2.1. 기본 명령어

notepad : 메모장

regedit : 레지스트리 편집기

calc : 계산기

mspaint : 그림판

clipbrd : 클립북 뷰어

cmd : 도스창

dxdiag : 다이렉트X 진단도구

iexplore : 익스플로러

mstsc : 원격 데스크탑

osk : 화상 키보드

winword : MS Office 워드

powerpnt : MS Office 파워포인트

excel : MS Office 엑셀

outlook : MS Office 아웃룩

wordpad : 워드패드

winmine : 지뢰찾기

sndvol : 볼륨조절

rstrui : 시스템 복원

msconfig : 시작프로그램 제어 등 시스템 상태 기초 환경설정

sysedit : 시스템구성편집기 (autoexec.bat , config.sys ,win.ini, system.ini)





2.2.2. 제어판 명령어

control : 제어판

Access.cpl : 내게 필요한 옵션

appwiz.cpl : 프로그램 추가/제거

bthprops.cpl : 블루투스장치설정

desk.cpl : 디스플레이 등록정보

firewall.cpl : Windows방화벽

hdwwiz.cpl : 새하드웨어추가마법사

inetcpl.cpl : 인터넷등록정보

intl.cpl : 국가및언어옵션

irprops.cpl : 적외선포트 설정

joy.cpl : 게임컨트롤러

main.cpl : 마우스등록정보

mmsys.cpl : 사운드및 오디오장치등록정보

ncpa.cpl : 네트워크연결

netsetup.cpl : 네트워크설정마법사

nusrmgr.cpl : 사용자계정

nwc.cpl : 네트워크 게이트웨이

odbccp32.cpl : ODBC데이터원본 관리자

powercfg.cpl :  전원옵션 등록정보

sysdm.cpl : 시스템등록정보

telephon.cpl : 전화및모뎀 옵션  

timedate.cpl : 날짜 및 시간 등록정보

wscui.cpl : Windows보안센터

wuaucpl.cpl : 자동업데이트

Sapi.cpl : 텍스트 음성 변환설정

control admintools : 관리도구

control folders : 폴더옵션

control userpasswords : 사용자 계정





2.2.3. 관리콘솔 명령어

certmgr.msc : 인증서

ciadv.msc : 인덱싱서비스

ntmsmgr.msc : 이동식저장소

ntmsoprq.msc : 이동식저장소 운영자 요청

secpol.msc : 로컬보안정책

wmimgmt.msc : WMI(Windows Management Infrastructure)

compmgmt.msc : 컴퓨터 관리

devmgmt.msc : 장치관리자

diskmgmt.msc : 디스크 관리

dfrg.msc : 디스크 조각모음

eventvwr.msc : 이벤트 뷰어

fsmgmt.msc : 공유폴더

gpedit.msc : 로컬 컴퓨터 정책

lusrmgr.msc : 로컬 사용자 및 그룹

perfmon.msc : 성능모니터뷰

rsop.msc : 정책의 결과와 집합

secpol.msc : 로컬 보안설정

services.msc : 서비스

C:\WINDOWS\system32\Com\comexp.msc : 구성요소서비스

C:\WINDOWS\Microsoft.NET\Framework\v1.1.4322\mscorcfg.msc : .NET Configuration 1.1



#단축키

로컬보안정책 명령어 https://www.snoopybox.co.kr/1561
단축키 https://www.clien.net/service/board/lecture/13621530?od=T31&po=0&category=&groupCd=
탐색기에서 동일한 창 띄우기 ctrl + n
탐색기 외에도 익스플로러나 다른 지원되는 프로그램에서도 ctrl + N 누르시면 동일 창 혹은 새로운 창 열려요!!
윈도우 작업표시줄 왼쪽에 있는 아이콘은 WIN+1 , 2, 3 으로 실행할수 있습니다.
다른 팁이지만 그냥 탐색기 창을 띄울려면 window 키+ e를 누르시면 됩니다.
또 하나의 팁을드리자면 윈도우10부터 Shift+마우스 오른쪽 '이 위치에서 명령프롬프트열기' 기능이 없어졌는데 아주 간단하게 상단 경로에 cmd치면 현재위치에서  명령프롬프트가 열립니다.
Shift + 마우스 오른쪽 -> 여기에 Powershell 창 열기 -> cmd 입력후 엔터하는 방법도 있습니다.
윈도우키 + 방향키로 창 크기를 마음대로 조절할수 있어요!
창닫기는 ctrl w
왼손 쉬프트키 누르고 탐색기아이콘 왼쪽 클릭하시면 탐색기창이 새로 열려요. (아이콘을 휠 버튼으로 눌러도 똑같이 됩니다)
컨트롤 + 쉬프트 + 엔 = 새폴더 만들기
<Win7단축키>
win+r service.msc
     msconfig
     regedit
     recent
     mstsc
diskmgmt.msc
regedit

appwiz.cpl
notepad
mspaint
calc
control userpasswords2
http://127.0.0.1
%appdata%





# Windows 원격접속이 안될 떄 (오라클 수정암호화)

http://prolite.tistory.com/743

microsoft.com/fwlink/?linkid=866660







#IP 공격




