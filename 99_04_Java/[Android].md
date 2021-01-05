#안드로이드 단축키

Ctrl +  Alt + L : 코드정렬



# 안드로이드 테마 다크로 변경하기
"Theme.AppCompat.Light.DarkActionBar" -> "Theme.AppCompat.NoActionBar"





# 안드로이드 설치 후 세팅 (20180225일 19시)

File > Setting > Appearance & Behavior> System Settings
Reopen last project on startup

File > Setting > Editor > General > Auto Import

Add unabiguous imports on the fly
Optimize imports on the fly (for current project)



# 안드로이드 상태바에 Notifications 보내기
https://mainia.tistory.com/1143
https://episode1.tistory.com/entry/6-%EC%95%88%EB%93%9C%EB%A1%9C%EC%9D%B4%EB%93%9C-Notification-%ED%99%9C%EC%9A%A9%ED%95%9C-%EC%95%8C%EB%A6%BC%EB%B0%94-%EB%9D%84%EC%9A%B0%EA%B8%B0

# 안드로이드 json 파싱
http://turtle.azurewebsites.net/users

https://dpdpwl.tistory.com/23


#android에서 Navigation Drawer 사용하기
1. https://webnautes.tistory.com/1017
https://www.sitepoint.com/material-design-android-design-support-library/
https://github.com/sitepoint-editors/Design-Demo

2.


#

http://kitesoft.tistory.com/61


http://androiddeveloper.tistory.com/55


https://www.youtube.com/watch?v=iNMtT8L7E5U


http://www.kmshack.kr/2017/01/%EB%94%94%EC%9E%90%EC%9D%B4%EB%84%88-%EC%97%86%EC%9D%B4-%EC%95%88%EB%93%9C%EB%A1%9C%EC%9D%B4%EB%93%9C-%EC%95%B1-%EB%94%94%EC%9E%90%EC%9D%B8%ED%95%98%EA%B8%B0/


https://www.inflearn.com/course/%EC%95%88%EB%93%9C%EB%A1%9C%EC%9D%B4%EB%93%9C-%EC%8A%A4%ED%8A%9C%EB%94%94%EC%98%A4-%EC%95%88%EB%93%9C%EB%A1%9C%EC%9D%B4%EB%93%9C-%EC%95%B1-%EB%A7%8C%EB%93%A4%EA%B8%B0/










14시 이력서 작성 http://woowabros.github.io/experience/2017/07/17/resume.html

# 안드로이드 리팩토링 방법 (dex2jar,jd-gui,apktool)
http://layers7.tistory.com/7?category=724470
# 폰갭 설치 https://build.phonegap.com/




# Error:Could not determine the class-path for interface com.android.builder.model.AndroidProject.
https://stackoverflow.com/questions/42777321/could-not-determine-the-class-path-for-interface-com-android-builder-model-andro/42994035



# No service of type Factory  available in ProjectScopeServices. Open File
https://www.google.co.kr/search?rlz=1C1CHZL_koKR769KR769&ei=bfWXWu2fK8ej8AWP1avQBg&q=+No+service+of+type+Factory++available+in+ProjectScopeServices.+Open+File&oq=+No+service+of+type+Factory++available+in+ProjectScopeServices.+Open+File&gs_l=psy-ab.3..0.471387.471387.0.472298.1.1.0.0.0.0.143.143.0j1.1.0....0...1c.1.64.psy-ab..0.1.141....0.qGcrThDlueA

해결 방법
1. build.gradle
dependencies {
  classpath 'com.android.tools.build:gradle:2.3.2'
// classpath 'com.github.dcendents:android-maven-plugin:1.0'
}
// Top-level build file where you can add configuration options common to all sub-projects/modules.
buildscript {
  repositories {
       mavenCentral()
  }
  dependencies {
       classpath 'com.android.tools.build:gradle:0.12.2'
      classpath 'com.github.dcendents:android-maven-plugin:1.0'
}
}
task wrapper(type: Wrapper) {
  gradleVersion = '1.12'
}
2.gradle-wrapper.properties
distributionUrl=https\://services.gradle.org/distributions/gradle-3.3-all.zip
3. build.gradle(library)
apply plugin: 'com.android.library'
//apply plugin: 'android-maven'





