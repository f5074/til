## Docker 설치

### (1) Windows Docker 설치

1. cmd > taskmgr > 성능탭 >가상화 사용함인지 확인( 안되어 있을 경우 BIOS에서 사용으로 설정 변경)

2. cmd > appwiz.cpl > Windomws 기능 켜기/끄기 > Hyper-V 체크 > Windows 재부팅

3. [Docker사이트](https://hub.docker.com/editions/community/docker-ce-desktop-windows/) > 설치파일 다운로드(Get Docker 클릭)

4. 설치파일 > Configuration OK 클릭 > 설치 완료 후 Close and Restart > Windows 재부팅

5. [커널업데이트 패키지 사이트](https://aka.ms/wsl2kernel) > x64 머신용 최신 WSL2 Linux 커널 업데이트 패키지 클릭 > 설치파일 설치

6. trayIcon > Docker 오른쪽 마우스 클릭 > Restart Docker 클릭

7. cmd > docker -v로 설정 확인

### (2) Docker 회원가입

1. [Docker 사이트](https://hub.docker.com/) > Sign Up > 가입완료

2. Choose a Plan 에서 Continue with/Free > 이메일인증 완료

### (3) Docker Tutorial

1. Downloads 

2. Clone
    git clone https://github.com/docker/doodle.git
   
3. Build
    cd doodle\cheers2019 ; docker build -t f5074/cheers2019 .
   
4. Run
    docker run -it --rm f5074/cheers2019
5. Ship
    docker login ; docker push f5074/cheers2019

### (4) My Repositories
https://hub.docker.com/repositories

### (5) GUI용 Docker (Kitematic)

www.github.com/docker/kitematic/releases


### Reference
[갓대희의 작은공간](https://goddaehee.tistory.com/251)