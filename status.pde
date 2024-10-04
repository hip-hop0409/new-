void drawStatus() {
  if (nowW == 1 || nowW == 2) {
    if ((nowW == 1 && A1 <= 10 && A1 > 0) || (nowW == 2 && A2 <= 10 && A2 > 0)) {
      fill(255);
      text("Low Ammo!", width / 2 - 50, height / 2 + 100); //a1이나 a2가 10발 이하 될때 탄약 적다 표시
    } else if ((nowW == 1 && A1 == 0) || (nowW == 2 && A2 == 0)) {
      fill(255);
      text("Out of Ammo!", width / 2 - 50, height / 2 + 100); //탄 없을때 탄없음 표시
    }
  }
  
  if (grR && grCnt > 0 && nowW == 5) {
    fill(255);
    text("Grenade Ready!", width / 2 - 70, height / 2 + 120); //수류탄 들때 수류탄 준비 표시
  }
}
