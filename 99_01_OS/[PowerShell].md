
#원격 실행
## 원격 http://lab.gamecodi.com/board/zboard.php?id=GAMECODILAB_QnA_etc&no=5258&z=
## 원격관련 오류 참조https://m.blog.naver.com/PostView.nhn?blogId=sung487&logNo=221042683798&proxyReferer=https%3A%2F%2Fwww.google.com%2F

###원격 PowerShell :
1) Enable-PSRemoting
2)Azure와 원격방화벽의 인바운드 포트 5985,5986 개방

###로컬 PowerShell:
1)winrm quickconfig --force

2)winrm get winrm/config/client

3)특정 IP에 접속하는 것을 허용
-- 특정 IP허용
Set-Item WSMan:\localhost\Client\TrustedHosts -Value "52.141.18.204"
-- 전체 허용
Set-Item WSMan:\localhost\Client\TrustedHosts -Value *

4)자동접속을 하기 위한 세팅 
$MyCredential = Get-Credential "f5074"
$MyPassword = Read-Host "Password" -AsSecureString | ConvertFrom-SecureString
$MyPassword = $MyPassword | ConvertTo-SecureString
$ObjectTypeName = "System.Management.Automation.PSCredential"
$MyCredential = New-Object -TypeName $ObjectTypeName -ArgumentList "f5074",$MyPassword


5)
-- 직접접속해서 확인
Enter-PSSession -ComputerName "52.141.18.204" -Credential $MyCredential

-- 특정 명령어만 실행
Invoke-Command -ComputerName "52.141.18.204" -credential $MyCredential -ErrorAction Stop -ScriptBlock {Invoke-Expression -Command:"cmd.exe /c 'taskkill /im node.exe /f'"}
Invoke-Command -ComputerName "52.141.18.204" -credential "f5074" -ErrorAction Stop -ScriptBlock {Invoke-Expression -Command:"cmd.exe /c 'C:\inetpub\ftproot\stop_sv.bat'"}





--Commit&Push git
Invoke-Command -ComputerName "52.141.18.204" -credential "f5074" -ErrorAction Stop -ScriptBlock {Invoke-Expression -Command:"cmd.exe /c 'C:\inetpub\ftproot\start_commit_git.bat'"}

--pull git
Invoke-Command -ComputerName "52.141.18.204" -credential "f5074" -ErrorAction Stop -ScriptBlock {Invoke-Expression -Command:"cmd.exe /c 'C:\inetpub\ftproot\start_pull_git.bat'"}

-- 서버 종료
Invoke-Command -ComputerName "52.141.18.204" -credential "f5074" -ErrorAction Stop -ScriptBlock {Invoke-Expression -Command:"cmd.exe /c 'C:\inetpub\ftproot\stop_sv.bat'"}
Invoke-Command -ComputerName "52.141.18.204" -credential $MyCredential -ErrorAction Stop -ScriptBlock {Invoke-Expression -Command:"cmd.exe /c 'taskkill /im node.exe /f'"}

-- 서버 재시작
Invoke-Command -ComputerName "52.141.18.204" -credential "f5074" -ErrorAction Stop -ScriptBlock {Invoke-Expression -Command:"cmd.exe /c 'C:\inetpub\ftproot\start_sv.bat'"}

-- 확인
f5074.koreacentral.cloudapp.azure.com:4200



