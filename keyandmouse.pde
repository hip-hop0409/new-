void keyPressed() {
  if ((key == 'r' || key == 'R') && !reload) {
    reload = true;
    reloadstart=  millis();
    actiontime =  millis(); //모든 framecount는 마지막 프레임으로 기록
  }
  
  if (key == 'x' || key == 'X') {
    if (nowW == 1) {
      sShoting1 = !sShoting1; //x누르면 발사 모드 전환 1번무기
    } else if (nowW == 2) {
      sShoting2 = !sShoting2;
    }
    canshoot = true; //단발 모드일때 한번 발사 후 다시 발사 가능하도록
    actiontime = millis();
  }
  
  if (key == '1') {
    nowW = 1;
    actiontime = millis();
  }
  
  if (key == '2') {
    nowW = 2;
    actiontime = millis();
  }
  
  if (key == '3') {
    nowW = 3;
    if (hp < mhp) {
      hp += 30;
      if (hp > mhp) {
        hp = mhp;
      }
    }
    
    grCnt = mxGr;
    grR = false;
    //체력이랑 수류탄 채워줌 3번은
    actiontime = millis();
  }
  
  if (key == '4') {
    nowW = 4;
    armor = maxArmor;
    actiontime = millis();
  }
  //4번은 방어구 채워줌 
  if (key == 'g' || key == 'G') {
    nowW = 5;
    if (grCnt > 0) {
      grR = true;
    } else {
      grR = false;
    }
    actiontime = millis();
  }
}
//g키를 누르면 수류탄
void mousePressed() {
  if (!reload && canshoot && (nowW == 1 || nowW == 2)) { //1번,2번무기 및 재장전 아닐때만 가능 canshoot이 true일때만 발사
    if (nowW == 1) {
      sShoting = sShoting1; //1번무기의 단발 연사 여부를 할당
    } else {
      sShoting = sShoting2; //2번무기의 단발 연사 여부를 할당
    }

    if (sShoting) { //단발일때
      if (canshoot) { //쏠 수 있을때
        fire();
        canshoot = false; //한발 쏘면 값이 false로 바뀌고 다시 발사하기 위해선 다시 클릭해야함
      }
    }
  } else if (nowW == 5 && grR && grCnt > 0) { //수류탄이 있을때만 수류탄 던짐
    grCnt--;
    if (grCnt == 0) {
      grR = false;
    }
  }
  actiontime = millis();
}

void mouseReleased() { //단발 사격이 가능하게 해줌
  if (nowW == 1) {
    sShoting = sShoting1;
  } else {
    sShoting = sShoting2;
  }
//if else 나눠둔거는 1번무기 2번무기 각각 단발 연사 값 저장
  if (sShoting) {
    canshoot = true;//위에서 한발 쏘고 canshoot 값을 true로 바꿔서 다시 사격이 가능하게 함
  }
}
