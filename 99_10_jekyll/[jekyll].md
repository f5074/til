# 사용법

## 1. 루비설치

## 2. 지킬 (Jekyll) 설치하기

gem install jekyll
gem install minima
gem install bundler
gem install jekyll-feed
gem install tzinfo-data

## 3. 로컬에서 블로그 생성하기

jekyll new my-awesome-site
cd my-awesome-site
bundle exec jekyll serve


## 블로그 저장 폴더로 이동한다.
## 인코딩 에러 발생시 다음의 코드를 실행한다.
chcp 65001

# 지킬 실행
jekyll serve

bundle exec jekyll serve --host 0.0.0.0 --port 4000

# 테마변경

gem install just-the-docs
bundle show just-the-docs

## 1. Gemfile 에 다음을 추가
gem "just-the-docs"

## 2. _config.yml 파일에 다음을 추가
theme: just-the-docs

## 3. 터미널에서 다음을 실행
bundle install


# Azure에서 Jekyll을 bat로 실행하기
Azure에 Jekyll 설정을 완료하고, 원격에서 실행하려면 host를 0.0.0.0로 세팅해야 하지만,
Azure의 가상환경의 경우 DNS주소로 host를 설정할 수 없을 때, _site는 DNS주소로 생성하고
실행 시에는 원격에서 실행하는 형태로하고 build를 하지 않도록 해서 처리함  


cd C:\DEV\workspace\f5074.github.io
:start cmd /c bundle exec jekyll serve --host f5074.koreacentral.cloudapp.azure.com --port 4000
:timeout /t 10
:bundle exec jekyll serve --skip-initial-build --host 0.0.0.0 --port 4000

cmd /c bundle exec jekyll serve --host f5074.koreacentral.cloudapp.azure.com --port 4000
IF "%ERRORLEVEL%" == "0" goto ERROR
ELSE goto EXEC

:EXEC
bundle exec jekyll serve --skip-initial-build --host 0.0.0.0 --port 4000

:ERROR
echo error
pause



### reference

https://shryu8902.github.io/_posts/2018-06-22-jekyll-on-windows/
https://min9nim.github.io/2018/07/jekyll-theme/
