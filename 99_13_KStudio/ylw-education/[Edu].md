## 1_설정

### K-Studio
osryu@topengnet.com
1q2w3e4r1!Q

### ERP
master
YlwEdu2093!#

### SQLServer
192.168.2.196,14246
devoutedu
ERPrydbr209#


## 1일차

#### K-Studio의 서비스


#### workflow

#### K-Studio의 데이터수집


컨트롤Caption
DataBlock
DataFieldName
DataFieldCd 코드가 필요한경우

#### 서비스구종
Biz Service => Data Service


비즈니스서비스를 만들고, 
K-WF는 여러개 설정가능

#### 5. SQL-WF
Biz > DB

biz > s


### 2교시
K-Studio 워크플로우타입 
화면에서 우측마우스 

비즈서비스의 화살표는 인아웃 왼쪽인 오른쪽 아웃 저장


개발자사이트에서

--개발자커뮤니티
devcomm.ksystem.co.kr
--개발자들을 위한공간(궁금한사항은 지ㄹ문가능)
kdc.ksystem.co.kr


???
접근권한등록
화면미리보기없나요

화면에 테이블등록(DM)화면이 있음



화면정보 불러오기

메뉴얼 에


화면 - (비즈니스)서비스 - SP
Ever.Edu.Sales.BizEduEstimate_Edu01
비즈니스-견적마스터


edudevEdu01_SEduEstimateQuery  Q-조회
edudevEdu01_SEduEstimateCheck E-처리
edudevEdu01_SEduEstimateSave S-저장


edudevEdu01_SEduEstimateitemQuery
edudevEdu01_SEduEstimateitemCheck
edudevEdu01_SEduEstimateitemSave


_TEduSampleMaster_Edu01
_TEduSampleDetail_Edu01




http://download.ksystem.co.kr:8083/mjkang/edu/K-Studio2.0_EDU/2.EstimateSave.zip

화면 -(비즈니스) 


화면 EstimateSeq 1 => IN -> SP -> OUT ( 견적번호 NO001, 유태우, ...)

1 2 3 4
NO YLW-20210602001


ctrl + e 는 실행 ctrl + s 저장


### 
업무별외부키생성정의등록의 구성정의가 원하는 



## 2일차

### 1교시

화면 맞추기


시트만들기

#### 옵션 시트

#### 그리드 10칸정도

전체속성 두번째에 변경
품목 코드헬프로 변경 
로우10줄
품목 단위 코드헬프
코드 사용 못하게 DIS처리

견적내부코드
견적순번내부코드
품목내부코드
단위내부코드

코드 보지 못하게 숨김처리 HID;

히든처리후 시트초기화

수량,품목 NOS;

툴바버튼 5개 생성

버튼 클릭 후 제목에 신규, 이벤트유형선택

5개 버튼에  신규N, 조회Q,저장S,삭제D , 행삭제 \C-SheetDelete

빈칸 오른쪽에서 메소드 생성

메소드넹미  New , 타입N-신규
메스드에 이벤트추가

신규화면에 Click이벤트에 New선택

Get 에 캔버스 매핑

GridCanvasC2
조회저장


체크ㅂ버튼추가
저장시에는 NotNullCheck체크
Get 마스터
Get 디ㅇ테일

Set에는 초록색 체크된 모니터






### 2교시
DELETE


sp_helptext


견적내부코드
견적순번내부코드
품목내부코드
단위내부코드
판매단가
수량
판매금액
비고
품목
단위



시트삭제

m_SendXml
m_RecvXml

디버그모드 CTRL + F12

EstimateSeq
EstimateNo
EstimateSerl

문제의 경우 화면에서 잡을 수 없음

sql server profiler
추적속성에


%edu01%




edudevEdu01_SEduEstimateQuery  Q-조회
edudevEdu01_SEduEstimateCheck E-처리
edudevEdu01_SEduEstimateSave S-저장


edudevEdu01_SEduEstimateitemQuery
edudevEdu01_SEduEstimateitemCheck
edudevEdu01_SEduEstimateitemSave



쿼리실행시 각각을 진행해서 문제가 없는지 확인하는 형태로 진행

sp_helptext edudevEdu01_SEduEstimateQuery;
sp_helptext edudevEdu01_SEduEstimateCheck;
sp_helptext edudevEdu01_SEduEstimateSave;

sp_helptext edudevEdu01_SEduEstimateitemQuery;
sp_helptext edudevEdu01_SEduEstimateitemCheck;
sp_helptext edudevEdu01_SEduEstimateitemSave;



트랜잭션 추가 여부 와 체크여부시에 프로시져가 변경됨


화면 새로 생성
금액자동계산
디테일에 데이터추가

그리드 순서 콜럼
화면 조회의 화면순서 텝인덱스 텝할때넘어가는것



견적입력
금액 자동 계산 ---1
디테일에 데이터 없으면 체크로직추가 ---2
    -- 하기 체크 로직을 수정하여 필요한 체크로직을 추가합니다.    
    EXEC dbo._SCOMMessage @MessageType OUTPUT,      
                          @Status      OUTPUT,      
                          @Results     OUTPUT,      
                          1293                  , --  (SELECT * FROM _TCAMessageLanguage WHERE LanguageSeq = 1 AND MessageSeq like '%확인%')    
                          @LanguageSeq       ,   --- 시트의 데이터를 확인하세요     
                          279, '시트'            ,    -- SELECT * FROM _TCADictionary WHERE LanguageSeq = 1 AND Word = '시트'    
						  355, '데이터'                -- SELECT * FROM _TCADictionary WHERE LanguageSeq = 1 AND Word = '데이터'    




    UPDATE #BIZ_OUT_DataBlock2    
       SET Result      = @Results    ,    
           MessageType = @MessageType,    
           Status      = @Status      
      FROM #BIZ_OUT_DataBlock2    
     WHERE (SELECT COUNT(1) FROM #BIZ_OUT_DataBlock2 WHERE WorkingTag = 'A')< 1 -- 0개 일떄 





견적조회화면개발 ---3

CellText(SSNew,SSNew.ActiveRow,'Price')
CellText(SSNew,SSNew.ActiveRow,'Qty')


Price = CellText(SSNew,SSNew.ActiveRow,'Price')
Qty = CellText(SSNew,SSNew.ActiveRow,'Qty')
CurAmt = Price * Qty

SetText(SSNew,SSNew.ActiveRow,'CurAmt', CurAmt)

CellText(SSNew,SSNew.ActiveRow,'Price') * CellText(SSNew,SSNew.ActiveRow,'Qty')


MessageBoxShow(CellText(SSNew,SSNew.ActiveRow,'Price'),CellText(SSNew,SSNew.ActiveRow,'Qty'))



edudevEdu01_SEduEstimateitemCheck;아이템 체크에서 주석해제


SELECT @Results


### 14시30분
Ever.Edu.Sales.BizEduEstimateList_Edu01


### 16:00
점프기능

JumpOut('JumpOutDataKey')

### 16:20

##칼라변경

local col
for col= 0 , SSNew.MaxCols -1 do
SSNew.ActiveCol = col

	if SSNew.ActiveColumnName == 'CurAmt'
	then 
		SSNew.ActiveCol = col
		SSNew.ActiveCellBackColor = -2031936
	end
end





#### 컬러변경


local col
for col= 0 , SSNew.MaxCols -1 do
SSNew.ActiveCol = col

	if SSNew.ActiveColumnName == 'CurAmt'
	then 
		SSNew.ActiveCol = col
		SSNew.ActiveCellBackColor = -2031936
	end
end


local col
for col= 0 , SSNew.MaxCols -1 do
SSNew.ActiveCol = col

	if SSNew.ActiveColumnName == 'EmpName'
	then 
		SSNew.ActiveCol = col
		SSNew.ActiveCellBackColor = -1
	end
end



Query 변경여부호가인
vbYesNoCancel
##### 여러곳에서 사용
RunPgmMethod('ColorChange')


## 3일차

### 1교치 (9:40)

xml로 모든출력물을 보냄



http://download.ksystem.co.kr:8083/mjkang/edu/K-Studio2.0_EDU/2.EstimateSave.zip
http://download.ksystem.co.kr:8083/mjkang/edu/K-Studio2.0_EDU/3.EstimateListQuery.zip
http://download.ksystem.co.kr:8083/mjkang/edu/K-Studio2.0_EDU/4.EstimatePrint.zip


c:\users\public\appdata\local\younglimwon\ksystem ver.5 genuine\외부개발교육\RdView\Data\FrmEduEstimate_Edu08.xml

c:\users\public\appdata\local\younglimwon\ksystem ver.5 genuine\외부개발교육\RdView\Data\FrmEduEstimate_Edu08.xml



_TEduSampleMaster_Edu01
_TEduSampleDetail_Edu01


### 2교시 (10:50)

오즈쿼리 디자이너 실행

오즈 디자이너에서 더블클릭

esc 전체선택
오른쪽으로
F2 재입력

작업폴더 재설정하면 odi 재설정시 문제해결

## 3교시 (13:20)
### 변경전
This.SetText(This.GetDataSetValue("DataBlock1.DateFr").substring(0,4) + "년 " +
This.GetDataSetValue("DataBlock1.DateFr").substring(6,4) + "월 " +
This.GetDataSetValue("DataBlock1.DateFr").substring(8,6) + "일 ~ " +
This.GetDataSetValue("DataBlock1.DateTo").substring(0,4) + "년 " +
This.GetDataSetValue("DataBlock1.DateTo").substring(6,4) + "월 " +
This.GetDataSetValue("DataBlock1.DateTo").substring(8,6) + "일" );


### 변경후 
This.SetText(This.GetDataSetValue("DataBlock1.EstimateDate").substring(0,4) + "년 " +
This.GetDataSetValue("DataBlock1.EstimateDate").substring(6,4) + "월 " +
This.GetDataSetValue("DataBlock1.EstimateDate").substring(8,6) + "일 "


SUBSTRING

ROUND
CEILING


SELECT CONVERT(NVARCHAR,CONVERT(MONEY(1000000000),1)) AS AMT


### 4교시 (15:00)

Ksystem -FileService
