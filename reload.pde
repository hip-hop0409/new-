void reloadWeapon() {
  if (nowW == 1) {
    A1 = mxA1; 
  } else if (nowW == 2) {
    A2 = mxA2;
  }
  //장전하면 최대탄약되게
   actiontime = millis(); //마지막 프레임 지정
}
