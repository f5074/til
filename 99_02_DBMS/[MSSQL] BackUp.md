use master
go

-- 백업 파일 목록 확인
RESTORE FILELISTONLY
     FROM DISK='D:\DB_DATA\20180220_TEST.bak' -- 백업해둔 .BAK 파일

-- 새로운 이름으로 데이터베이스 복원
RESTORE DATABASE [TEST] --새롭게 복원할 DB명
     FROM DISK='D:\DB_DATA\20180220_TEST.bak' --백업해둔 .BAK 파일
     WITH RECOVERY,
     MOVE 'TEST' TO 'D:\DB_DATA\TEST2.mdf', --MOVE 'HVI_2011'은 첫번째 LOCALNAME (PMS_Data)
     MOVE 'TEST_log' TO 'D:\DB_DATA\\TEST2_log.ldf', REPLACE --MOVE 'HVI_2011_LOG'는 2번째 LOGICALNAME (PMS_Log)

GO


--logical_file_name  확인
use TEST
go

SELECT file_id, name as [logical_file_name],physical_name
from sys.database_files



--logical_file_name  변경
USE [master]
GO
ALTER DATABASE [TEST] MODIFY FILE (NAME = DYERP, NEWNAME = WOOJE);
GO
ALTER DATABASE [TEST] MODIFY FILE (NAME = DYERP_log, NEWNAME = WOOJE_log);
GO






*LocalDB 
1.LocalDB설치 

https://www.microsoft.com/ko-kr/download/details.aspx?id=29062

KOR\x64\SqlLocaLDB.MSI
KOR\x64\SQLManagementStudio_x64_KOR.exe


2.LocalDB 인스턴스 만들기

http://orangetazo.tistory.com/11

CMD에서
 생성 : SqlLocalDB create 'DB명'
 삭제 : SqlLocalDB stop 'DB명'  > SqlLocalDB delete 'DB명'

3.기존DB에서 LocalDB로 mdf,ldf파일옮기기

---mdf, ldf 파일 복사 http://faq.hostway.co.kr/Windows_DB/7718

sp_detach_db 'SKWD'
GO
sp_attach_db 'SKWD' , 'D:\DB_DATA\SKWD.mdf' , 'D:\DB_DATA\SKWD_log.ldf'
GO



4.Visual Studio에서 LocalDB 연결방법

https://docs.microsoft.com/ko-kr/sql/database-engine/configure-windows/sql-server-2016-express-localdb

"Server=(localdb)\MSSQLLocalDB;Integrated Security=true"

"Server=(LocalDB)\MSSQLLocalDB; Integrated Security=true ;AttachDbFileName=D:\Data\MyDB1.mdf"

private static string DB_CONN_ADDR = "Server=(LocalDB)\\v11.0; Integrated Security=true ;AttachDbFileName=C:\\Data\\SKWD.mdf;";



