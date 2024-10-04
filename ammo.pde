void drawAmmo() {
  float centerX = width - 240;
  float ammoY = height - 140;
  fill(255);
  
  if (nowW == 1) {
    text(A1 + " / " + mxA1, centerX - 30, ammoY); //무기 1번 들었을때 탄약 표시
  } else if (nowW == 2) {
    text(A2 + " / " + mxA2, centerX - 30, ammoY); //무기 2번 들었을때 탄약 표시
  }
  
  if (nowW == 1 || nowW == 2) {//1번 2번 눌렀을때만 나타나게 하기
    float fireModeX = centerX + 100; 
    float icons = 20; 
    float border = 5;
    
    if (nowW == 1) {
      sShoting = sShoting1; //1번 무기일때 단발 및 연사
    } else {
      sShoting = sShoting2; //2번 무기일때 단발 및 연사
    }

    if (sShoting) {
      rect(fireModeX, ammoY - 15, icons, icons); //단발모드일때 사각형 1개
    } else {
      for (int i = 0; i < 3; i++) {
        rect(fireModeX + i * (icons + border), ammoY - 15, icons, icons); //연사모드일때 사각형 3개
      }
    }
  }
}
