## 사용법

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


# 블로그 저장 폴더로 이동한다.
# 인코딩 에러 발생시 다음의 코드를 실행한다.
chcp 65001
# 지킬을 실행한다.
jekyll serve

bundle exec jekyll serve --host 0.0.0.0 --port 4000



### reference

https://shryu8902.github.io/_posts/2018-06-22-jekyll-on-windows/