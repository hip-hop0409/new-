void drawIcons() {
  float icons = 40;
  float border = 10;
  float startX = width - 270; //아이콘 위치 조정
  float startY = height - 100;

  for (int i = 0; i < 5; i++) { //아이콘 5개
    if (nowW == i + 1 || (nowW == 5 && i == 4)) {
      fill(255, 0, 0); //현재 무기선택하면 빨간색 되게
    } else {
      fill(200); //기본은 회색
    }
    rect(startX + i * (icons + border), startY, icons, icons);
  }
  //글자 위치 표시
  fill(255);
  text("1", startX + icons / 2 - 5, startY + icons / 2 + 5);
  text("2", startX + icons + border + icons / 2 - 5, startY + icons / 2 + 5);
  text("3", startX + 2 * (icons + border) + icons / 2 - 5, startY + icons / 2 + 5);
  text("4", startX + 3 * (icons + border) + icons / 2 - 5, startY + icons / 2 + 5);
  text("G", startX + 4 * (icons + border) + icons / 2 - 5, startY + icons / 2 + 5);
}
