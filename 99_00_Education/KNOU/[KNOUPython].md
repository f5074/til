bit.ly/NIAeduFiles

https://drive.google.com/drive/folders/1-ZSq-AnOZHsYa5DInM268R4LC-Le09hd


원격접속
210.114.91.91:26195 
eduuser
hello.edu

3.home에  파일복사해서 넣기

4. 터미널에서 jupyter notebook

5. notebook에서 new python3 클릭

# 리눅스 xrdp (윈도우에서 추가 설치 없이 바로 사용할 수 있는 원격데스크톱 서버


#2019.10.29. 화요일

-한 주제에 대한 처리는 Series가 처리함
 
# 뉴런 네트워크의 기본

1. 구성
input hidden output
실제 정답과 결과를 비교해서 똑같아 지도록 함
예를 들어서 숫자 1을 인풋으로 넣고 히든레이어를 거쳐 결과가 나왔을 때 해당하는게 숫자와 같은지
차이를 비교해서 (원래 넣은 값) 결과가 처음 넣은 값과 같도록 여러번 반복함

2. 가중치 (들어오는 정보는)
-들어오는 정보는 가중치를 가지고
- Full Connected 됨?!
-다리를 다쳤을 때 다리가 움직이는 경우, 다친 세포 이외에 다른 곳에서 전달하는 세포가 존재해서 다리가 움직이는 경우가 있을 수 있음
-어떤 값이 들어오더라도 가중치 조절을 하면 원하는 값을 예측할 수 있게 하면 될 것이다
-> 랜덤방식을 사용하니 시간이 오래걸림
-> 경험을 누적시키는 방법 ( 결과가 나온 후 다시 최소화 하는 방식을 찾아서 백오더 후 다시 결과가 나오게함 = 뉴런 네트워크)
경험치를 누적시키는 이유는 결국 가중치를 찾기 위해서 임

3. 편향치
input이외에 다른 것이 영향을 줄 수있다. 공부시간이 성적에 영향을 준다고 볼 때, 공부시간 이외에 ax +b 가 있을 수 있음
선형방정식을 기본으로 함
-차이가 0이 되도록 만들기 위해 노력함

4. 알고리즘
-hidden 에서 비교할 것의 차이를 최소화 시켜야 하는 알고리즘, 보내야 할것인가 안보낼것인가 (활성화 알고리즘)
-차이가 생겼을 때, 어떤 식으로 해야 내가 최소값을 찾을 수 있느냐 (비용 알고리즘)
-최적의 방법을 적용하는 것 (최적화 알고리즘)

ㅁ       ㅁ(활성화)  ㅁ(비용)

    <----------------
          (최적화)

-비용함수에서는 최소값을 찾음  경사하강법을 사용해서 최소값을 찾음
-학습률을 조정해서 최적화를 찾음 (0.1 0.2 등등을 사용해서)
-벡터화: 컴퓨터가 알수있는 상태로 바꿔줌

5.
처음에는 가중치를 랜덤으로 넣었다가, 값을 집어 넣되 말이 되는 값을 넣음 데이터의 정규분포값을 넣어줌( 자연에 존재하는 정규분포)

6. 알고리즘을 바꾸다보면 올라갔다 내려갔다 %가 변하므로,  하이퍼 파라메터란 자신이 괜찮은 알고리즘으로 바꾸는 것이있음
단 오버피팅이 너무 과하게 되면, 자신에 맞는 학습세팅에서만 잘맞는, 훈련된 데이터에만 잘 동작하는 것을 만들게 됨
일반 데이터에서도 높은 값이 나오도록 잘 조정해야함

자신에게 맞는 것을 조율하거나 선택하는 것