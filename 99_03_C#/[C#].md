##  C#  자바형태 줄 추가 나 c#형태 줄추가로 변경할 수 있음 (체크 전부 해제할경우 Java 형태 )


## c# database connection pool
Ibatis.net Oracle Session 무한 증가 문제
https://freehan.tistory.com/40
  <!-- Database connection information -->
  <database>
   <provider name="oracleClient2.0"/>
   <!--<dataSource name="SAPORA" connectionString="Data Source=SAPORA; User Id=sappop; Password=sappop001"/>-->
   <dataSource name="TEST" connectionString="Data Source=(DESCRIPTION =(ADDRESS = (PROTOCOL = TCP)(HOST = 192.168.0.1)(PORT = 1521))(CONNECT_DATA =(SERVER = TEST)(SERVICE_NAME = XE)));Persist Security Info=True;User Id=test;Password=1234; connection lifetime=3; max pool size = 20;"/>
  </database>

## C# Serial  Communication
https://m.blog.naver.com/PostView.nhn?blogId=monkeychoi&logNo=60202157379&proxyReferer=https%3A%2F%2Fwww.google.com%2F

http://www.hoons.net/Board/cshaptip/Content/89080


#Assembly 정보

string sVersion = Assembly.GetExecutingAssembly().GetName().Version.ToString();



## c# only one trayicon
https://stackoverflow.com/questions/31779638/prevent-more-than-one-tray-icon-in-c-sharp

## WebBrowser에서 IE8에서 css가 적용이 되지 않는 이유
http://www.codejs.co.kr/ie8-%EC%9D%B4%ED%95%98-rgba-%EB%8C%80%EC%B2%B4-%EA%B8%B0%EB%B2%95-%EB%B0%B0%EA%B2%BD-%ED%88%AC%EB%AA%85/

## 상대경로 절대경로 변경
https://ljh131.tistory.com/86

## 비주얼스튜디오 색깔끄기
https://stackoverflow.com/questions/55617240/how-can-you-change-text-color-settings-in-visual-studio-2019-to-match-the-style


## OpenCv
https://076923.github.io/posts/#C#-OpenCvSharp2


## WebBrowser css가 적용되지 않을 경우
 브라우저 버전을 특정 버전이 되도록 변경

http://ssamlaeng.blogspot.com/2015/08/c-webbrowser-control-css.html

// Source
private static void SetBrowserFeatureControl()
       {
           // http://msdn.microsoft.com/en-us/library/ee330720(v=vs.85).aspx
           // WebBrowser Feature Control settings are per-process
           var fileName = System.IO.Path.GetFileName(Process.GetCurrentProcess().MainModule.FileName);
           // make the control is not running inside Visual Studio Designer
           if (String.Compare(fileName, "devenv.exe", true) == 0 || String.Compare(fileName, "XDesProc.exe", true) == 0)
               return;
           SetBrowserFeatureControlKey("FEATURE_BROWSER_EMULATION", fileName, GetBrowserEmulationMode());
       }
       private static void SetBrowserFeatureControlKey(string feature, string appName, uint value)
       {
           using (var key = Registry.CurrentUser.CreateSubKey(
               String.Concat(@"Software\Microsoft\Internet Explorer\Main\FeatureControl\", feature),
               RegistryKeyPermissionCheck.ReadWriteSubTree))
           {
               key.SetValue(appName, (UInt32)value, RegistryValueKind.DWord);
           }
       }
       private static UInt32 GetBrowserEmulationMode()
       {
           int browserVersion = 7;
           using (var ieKey = Registry.LocalMachine.OpenSubKey(@"SOFTWARE\Microsoft\Internet Explorer",
               RegistryKeyPermissionCheck.ReadSubTree,
               System.Security.AccessControl.RegistryRights.QueryValues))
           {
               var version = ieKey.GetValue("svcVersion");
               if (null == version)
               {
                   version = ieKey.GetValue("Version");
                   if (null == version)
                       throw new ApplicationException("Microsoft Internet Explorer is required!");
               }
               int.TryParse(version.ToString().Split('.')[0], out browserVersion);
           }
           // Internet Explorer 10. Webpages containing standards-based !DOCTYPE directives are displayed in IE10 Standards mode. Default value for Internet Explorer 10.
           UInt32 mode = 10000;
           switch (browserVersion)
           {
               case 7:
                   // Webpages containing standards-based !DOCTYPE directives are displayed in IE7 Standards mode. Default value for applications hosting the WebBrowser Control.
                   mode = 7000;
                   break;
               case 8:
                   // Webpages containing standards-based !DOCTYPE directives are displayed in IE8 mode. Default value for Internet Explorer 8
                   mode = 8000;
                   break;
               case 9:
                   // Internet Explorer 9. Webpages containing standards-based !DOCTYPE directives are displayed in IE9 mode. Default value for Internet Explorer 9.
                   mode = 9000;
                   break;
               default:
                   // use IE10 mode by default
                   break;
           }
           return mode;
       }



##  날짜
https://rocabilly.tistory.com/252

SELECT LISTAGG(REASON_DESC,',') WITHIN GROUP(ORDER BY REASON_DESC) AS REASON_DESC
FROM (
SELECT TO_CHAR(TO_DATE(SUBSTR(REPLACE(X1.START_DATE_TIME, ' ', ''), 1, 14), 'YYYY-MM-DD HH24:MI:SS'),'MM-DD HH24:MM') ||'~' || TO_CHAR(NVL(TO_DATE(SUBSTR(REPLACE(X1.END_DATE_TIME, ' ', ''), 1, 14), 'YYYY-MM-DD HH24:MI:SS'), SYSDATE),'MM-DD HH24:MM') ||'(' ||X1.REASON_DESC || ')' REASON_DESC
  FROM EQP_HISTORY X1
WHERE X1.EQP_ID = '100216'
AND X1.START_DATE_TIME >= TO_CHAR(SYSTIMESTAMP-NUMTODSINTERVAL(30,'DAY'),'YYYYMMDD') || ' 000000000'
AND X1.STATE = 'Down'
)


## 동영상 앱 만들기
https://www.youtube.com/channel/UCjWnBKjlXv550KDiBjtW8vQ

## dpi 관련
https://codeday.me/ko/qa/20190318/90815.html


## Backgroudworker
https://it-jerryfamily.tistory.com/entry/BackgroundWorker-class

## 제네릭을 활용한 Mybatis Upgrade

interface TestInterface<T>
{
    // 제네릭 인터페이스 사용 https://slaner.tistory.com/122
    T Select(T _dto);
    T Insert(T _dto);
    T Update(T _dto);
    T Delete(T _dto);
}




## C# AutoScaleMode

## SQL 만들 때, WITH절은 조회조건 최소화로 만들지 않을경우 모든데이터를 조회하게 되어 속도이슈가발생할 수 있다.
## 인덱스 오라클인덱스 찾기 오라클 쿼리 성능향상
http://blog.syszone.co.kr/791
https://12bme.tistory.com/204
https://rongscodinghistory.tistory.com/113


#SQL LIKE "%%'가 있을 경우도 느림  LIKE'aaa%'


## C# 에서 한글 찾기  https://m.blog.naver.com/PostView.nhn?blogId=nameisljk&logNo=110190791875&proxyReferer=https%3A%2F%2Fwww.google.com%2F
## 포터블 깃 사용
https://rainlethe.tistory.com/entry/git-%EC%9D%84-%EC%9C%84%ED%95%9C-%EA%B8%B0%EB%B3%B8-%EC%84%A4%EC%A0%95
C:  
cd C:\Users\Administrator\abc  
C:\DEV\Downloads\PortableGit\git-cmd.exe git

git pull
git add *.*
git status
set timestamp=%DATE% %TIME%  
git commit -m "%timestamp%"
git status
git push origin master
git status

:loop
git pull
git add *.*
set timestamp=%DATE% %TIME%
git commit -m "%timestamp%"
git push origin master
timeout 60
goto loop






## 원격흔적없이 사용하기 
https://stackoverflow.com/questions/14481882/login-to-remote-using-mstsc-admin-with-password
cmd cmdkey /generic:"<server>" /user:"<user>" /pass:"<pass>"
cmd mstsc /public /v:"<ip>"

## c# 에러
구문 오류: 'C' 연산자 뒤에 피연산자가 없습니다.

## ActiveMQ관련 에러
ERR Cannot publish to a deleted Destination



## 읽기(여자가봐도 이쁜여자) 
https://brunch.co.kr/@jiteju/1

## MongoDB관리툴 Robo 3T  
https://javacpro.tistory.com/65

## C#으로 서버를 만들면 느리다?!
http://www.gamecodi.com/board/zboard.php?id=GAMECODI_Talkdev&no=3572
http://www.gamecodi.com/board/zboard.php?id=GAMECODI_Talkdev&page=1&sn1=&divpage=1&sn=off&ss=on&sc=on&select_arrange=headnum&desc=asc&no=5183

## c# Design Pattern AutoMapper
https://www.infoworld.com/article/3192900/how-to-work-with-automapper-in-c.html


## 설계관련

## c# data model DataModel  
https://docs.microsoft.com/ko-kr/aspnet/mvc/overview/older-versions/getting-started-with-aspnet-mvc3/cs/adding-a-model

## Interface  
http://blog.naver.com/PostView.nhn?blogId=knight50&logNo=80100555418&redirect=Dlog&widgetTypeCall=true

## Git Student Pack  
https://education.github.com/pack


## Azure DevOps https://visualstudio.microsoft.com/ko/vso/?rr=https%3A%2F%2Foojjrs.tistory.com%2F108
## 코딩된 UI 테스트
https://www.youtube.com/watch?v=KcSt22jhtEU
https://github.com/TestStack/White

## VisualStudio Team Service https://zenoahn.tistory.com/72

## .NET Core ado.net dapper  Dapper.NET  https://elanderson.net/2019/02/asp-net-core-with-dapper/

## Dapper.NET 사용법  https://jacking.tistory.com/1117

## Install Shield 사용법 VisualStudio InstallShiled(인스톨쉴드) 설치(Setup) 파일 만들기 https://rocabilly.tistory.com/186

## Interface의 활용
https://jeong-pro.tistory.com/52
https://brunch.co.kr/@john7711/2
https://swconsulting.tistory.com/56

https://brunch.co.kr/@jiteju/1
https://m.blog.naver.com/PostView.nhn?blogId=wlans2&logNo=221378609237&proxyReferer=https%3A%2F%2Fwww.google.com%2F


## Generic
https://hooni30.tistory.com/97
http://latedreamer.blogspot.com/2016/12/c-generic.html
https://docs.microsoft.com/ko-kr/dotnet/csharp/programming-guide/generics/constraints-on-type-parameters


## Patial Class
https://storycompiler.tistory.com/215

## 확장메소드, 분할클래스, 중첩클래스
https://blog.hexabrain.net/144



## 2018.06.27. [WPF] 권한상승

visual studio 2017 office developer tools download

https://social.msdn.microsoft.com/Forums/vstudio/en-US/5e99fcab-c136-4b62-b38a-1bbc50c38cdb/office-developer-tools-in-vs-2017-rc?forum=vssetup


http://insurang.tistory.com/108

### microsoft.office.core visual studio 2017
https://stackoverflow.com/questions/5932794/microsoft-office-core-reference-missing

clickonce는 요청실행 수준
http://www.sysnet.pe.kr/Default.aspx?mode=2&sub=0&pageno=6&detail=1&wid=950


### wpf ExecutablePath
https://stackoverflow.com/questions/17966871/c-sharp-application-executablepath-on-wpf-framework-3-5/17967155
https://stackoverflow.com/questions/11023998/clickonce-does-not-support-the-request-execution-level-requireadministrator



using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using Microsoft.Office.Interop.PowerPoint;
using Microsoft.Office.Core;
using System.Security.Principal;
using System.Diagnostics;
using System.Reflection;
namespace WpfApp1
{
    /// <summary>
    /// MainWindow.xaml에 대한 상호 작용 논리
    /// </summary>
    public partial class MainWindow : Window
    {
        string Path = @"C:\DEV\comment_20180627.ppt";
        Presentation PPT;
       
        public MainWindow()
        {
            string codeBase = Assembly.GetExecutingAssembly().CodeBase;
            UriBuilder uri = new UriBuilder(codeBase);
            string path = Uri.UnescapeDataString(uri.Path);
            //if (IsAdministrator() == false)
            //{
            //    try
            //    {
            //        ProcessStartInfo procInfo = new ProcessStartInfo();
            //        procInfo.UseShellExecute = true;
            //        procInfo.FileName = path;
            //        procInfo.WorkingDirectory = Environment.CurrentDirectory;
            //        procInfo.Verb = "runas";
            //        Process.Start(procInfo);
            //    }
            //    catch (Exception ex)
            //    {
            //        MessageBox.Show(ex.Message.ToString());
            //    }
            //    return;
            //}
            //InitializeComponent();
        }
        public static bool IsAdministrator()
        {
            WindowsIdentity identity = WindowsIdentity.GetCurrent();
            if (null != identity)
            {
                WindowsPrincipal principal = new WindowsPrincipal(identity);
                return principal.IsInRole(WindowsBuiltInRole.Administrator);
            }
            return false;
        }
        private void MakePPTIamge()
        {
            string myPicturesPath = Environment.GetFolderPath(Environment.SpecialFolder.MyPictures);
            for (int i = 0; i < PPT.Slides.Count; ++i)
            {
                PPT.Slides[i + 1].Export(string.Format("{0}\\temp{1}.jpg", myPicturesPath, i), "JPG",
                    (int)PPT.Slides[i + 1].Master.Width, (int)PPT.Slides[i + 1].Master.Height);
            }
        }
        private void Button_Click(object sender, RoutedEventArgs e)
        {
            ApplicationClass app = new ApplicationClass();
            PPT = app.Presentations.Open(Path, MsoTriState.msoTrue, MsoTriState.msoFalse, MsoTriState.msoFalse);
        }
        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            string myPicturesPath = Environment.GetFolderPath(Environment.SpecialFolder.MyPictures);
            for (int i = 0; i < PPT.Slides.Count; ++i)
            {
                PPT.Slides[i + 1].Export(string.Format("{0}\\temp{1}.jpg", myPicturesPath, i), "JPG",
                    (int)PPT.Slides[i + 1].Master.Width, (int)PPT.Slides[i + 1].Master.Height);
            }
        }
    }
}


## 2018.06.26. [WPF] winform vs WPF
http://blog.naver.com/PostView.nhn?blogId=neos_rtos&logNo=220759112213&parentCategoryNo=&categoryNo=34&viewDate=&isShowPopularPosts=true&from=search

https://m.blog.naver.com/PostView.nhn?blogId=jjoommnn&logNo=130033346945&proxyReferer=http%3A%2F%2Fwww.google.co.kr%2Furl%3Fsa%3Dt%26rct%3Dj%26q%3D%26esrc%3Ds%26source%3Dweb%26cd%3D1%26ved%3D0ahUKEwjB0-yDhvHbAhUIi7wKHdpkApwQFggmMAA%26url%3Dhttp%253A%252F%252Fm.blog.naver.com%252Fjjoommnn%252F130033346945%26usg%3DAOvVaw25NLtRcqFfAGynE89lShXX

http://crynut84.tistory.com/72

https://www.sysnet.pe.kr/Default.aspx?mode=3&sub=0&detail=1&wid=4807

http://yoshiki.tistory.com/entry/Winform-%EC%82%AC%EC%9A%A9%EC%9E%90-%EC%A0%95%EC%9D%98-%EC%BB%A8%ED%8A%B8%EB%A1%A4%EC%9D%84-WPF-%EC%97%90-%EC%A0%81%EC%9A%A9%ED%95%98%EB%8A%94-%EB%B0%A9%EB%B2%95


## 2018.08.02. [WPF] WebBrowser


<Window
        xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
        xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
        x:Class="fGrid11.Window1"
        Title="WebBrowserControlSample" Height="300" Width="450">
    <Window.CommandBindings>
        <CommandBinding Command="NavigationCommands.BrowseBack" CanExecute="BrowseBack_CanExecute" Executed="BrowseBack_Executed" />
        <CommandBinding Command="NavigationCommands.BrowseForward" CanExecute="BrowseForward_CanExecute" Executed="BrowseForward_Executed" />
        <CommandBinding Command="NavigationCommands.GoToPage" CanExecute="GoToPage_CanExecute" Executed="GoToPage_Executed" />
    </Window.CommandBindings>
    <DockPanel>
        <ToolBar DockPanel.Dock="Top">
            <Button Command="NavigationCommands.BrowseBack" Width="50" Content="back">
                <!--<Image Source="/WpfTutorialSamples;component/Images/arrow_left.png" Width="16" Height="16" />-->
            </Button>
            <Button Command="NavigationCommands.BrowseForward" Width="50" Content="Forward">
                <!--<Image Source="/WpfTutorialSamples;component/Images/arrow_right.png" Width="16" Height="16" />-->
            </Button>
            <Separator />
            <TextBox Name="txtUrl" Width="300" KeyUp="txtUrl_KeyUp"  />
            <Button Command="NavigationCommands.GoToPage" Width="50" Content="GoToPage">
                <!--<Image Source="/WpfTutorialSamples;component/Images/world_go.png" Width="16" Height="16" />-->
            </Button>
        </ToolBar>
        <WebBrowser Name="wbSample" Navigating="wbSample_Navigating"></WebBrowser>
    </DockPanel>
</Window>





using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
namespace fGrid11
{
    /// <summary>
    /// Window1.xaml에 대한 상호 작용 논리
    /// </summary>
    public partial class Window1 : Window
    {
        public Window1()
        {
            InitializeComponent();
            wbSample.Navigate("http://www.wpf-tutorial.com");
        }
        private void txtUrl_KeyUp(object sender, KeyEventArgs e)
        {
            if (e.Key == Key.Enter)
                wbSample.Navigate(txtUrl.Text);
        }
        private void wbSample_Navigating(object sender, System.Windows.Navigation.NavigatingCancelEventArgs e)
        {
            txtUrl.Text = e.Uri.OriginalString;
        }
        private void BrowseBack_CanExecute(object sender, CanExecuteRoutedEventArgs e)
        {
            e.CanExecute = ((wbSample != null) && (wbSample.CanGoBack));
        }
        private void BrowseBack_Executed(object sender, ExecutedRoutedEventArgs e)
        {
            wbSample.GoBack();
        }
        private void BrowseForward_CanExecute(object sender, CanExecuteRoutedEventArgs e)
        {
            e.CanExecute = ((wbSample != null) && (wbSample.CanGoForward));
        }
        private void BrowseForward_Executed(object sender, ExecutedRoutedEventArgs e)
        {
            wbSample.GoForward();
        }
        private void GoToPage_CanExecute(object sender, CanExecuteRoutedEventArgs e)
        {
            e.CanExecute = true;
        }
        private void GoToPage_Executed(object sender, ExecutedRoutedEventArgs e)
        {
            wbSample.Navigate(txtUrl.Text);
        }
    }
}

## [C#] Inter Process Comminication
### MemoryMappedFile
https://www.codeproject.com/Articles/138290/Programming-Memory-Mapped-Files-with-the-NET-Frame


### MemoryStream
https://msdn.microsoft.com/ko-kr/library/system.io.memorystream(v=vs.110).aspx

### IPC
http://12bme.tistory.com/227



### C# Process간 메세지 전송 SendMessage
출처: http://ehdrn.tistory.com/295 [동구의 블로그]


### SendMessage
http://slaner.tistory.com/68




### int To IntPtr
https://social.msdn.microsoft.com/Forums/vstudio/en-US/321053ee-44c9-4562-a2d3-01652a825e4e/pinvokes-int-to-intptr?forum=csharpgeneral


### c# Handle wpf
https://social.msdn.microsoft.com/Forums/vstudio/en-US/2536567a-cbce-4632-b224-ca00d633be95/how-to-get-handle-for-a-image-control-in-wpf?forum=wpf




## c# web api example

https://docs.microsoft.com/en-us/aspnet/web-api/overview/advanced/dependency-injection
https://docs.microsoft.com/en-us/aspnet/web-api/overview/getting-started-with-aspnet-web-api/tutorial-your-first-web-api
https://docs.microsoft.com/en-us/aspnet/web-api/overview/older-versions/build-restful-apis-with-aspnet-web-api
https://docs.microsoft.com/en-us/aspnet/core/tutorials/first-web-api?view=aspnetcore-2.1


USE [TRADING]
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
       [EmployeeNo] [int] IDENTITY(1,1) NOT NULL,
       [EmployeeName] [nvarchar](100) NULL,
       [EmployeeEmail] [nvarchar](200) NULL,
       [Department] [nvarchar](100) NULL,
       [EmployeeManagerName] [nvarchar](200) NULL,
       [EmployeeManagerEmail] [nvarchar](200) NULL
) ON [PRIMARY]
GO


### C# ref

https://www.geeksforgeeks.org/ref-in-c-sharp/


### C# Mybatis.NET 
사용하는 노하우
https://dever.tistory.com/237


### C# Hashtable vs Dictionary<String,Object>

https://dever.tistory.com/category/Visual%20Studio/C%23