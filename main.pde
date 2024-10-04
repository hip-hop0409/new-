int A1 = 30; //1번 무기 탄약
int A2 = 20; //2번 무기 탄약
int mxA1 = 30; //1번 무기 탄약 최대치
int mxA2 = 20; //2번 무기 탄약 최대치
int nowW = 1; //현재 장착한 무기&가젯
boolean grR = false; //수류탄 (g) 준비 여부
boolean sShoting; //사격모드 결정
boolean sShoting1 = false; //1번무기 단발/연사
boolean sShoting2 = false; //2번무기 단발/연사
boolean reload = false; // 재장전
int grCnt = 1; //수류탄 갯수
int mxGr = 1;//수류탄 최대소지개수
int armor = 0;//방어구
int maxArmor = 20;//최대방어구
int sc ; //사격 및 재장전 처리에 관한 변수
int reloadstart = 0; // 재장전 상태
int reloadtime = 1000;
boolean canshoot = true; //단발모드 시 발사 가능 여부
int actiontime = 0;//마지막 활동
int limit = 5000;//경고나오기까지 시간 프레임
int hp = 100; //현재체력
int mhp = 100; // 최대체력

void setup() {
  size(1080,720);
  textSize(20);
}

void draw() {
  background(100);
  drawMap(); //미니맵 (구현안됨 placeholder)
  drawIcons(); //아이콘
  drawHealth(); // 체력
  drawAmmo(); // 탄약관련 ui 그리기
  drawStatus(); //스테이터스
  drawCross(); // 크로스헤어

  // 사격 후 쿨다운 시간 관리
  if (sc > 0 && millis() - sc >= 100) {
    sc = 0;
  }
  
  // 연사 모드에서 마우스가 눌려있을 때 풀오토 사격
  if (mousePressed && !reload && canshoot && (nowW == 1 || nowW == 2)) {//사격이 가능하며, 마우스가 눌려있고, 재장전이 아니고, 1,2번무기일때만 사격가능
    if (nowW == 1) {
      sShoting = sShoting1;
    } else {
      sShoting = sShoting2;
    }

    if (!sShoting && sc == 0) { 
      fire();
      sc = millis(); // 쿨다운 시작 시간 기록
    }
  }
  
  // 비활성 상태에 따른 경고 및 체력 감소 처리
   if (millis() - actiontime > limit) {
    Warning();
    if (millis() % 1000 < 20) { // 1초 간격으로 체력 감소
      hp -= 5;
      if (hp < 0) {
        hp = 0;
      }
    }
  }

  // 재장전 처리
  if (reload) {
    if (millis() - reloadstart >= reloadtime) {
      reloadWeapon();
      reload = false;
    }
  }
}
