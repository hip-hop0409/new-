void drawHealth() { //체력바 및 방어구
  float barWidth = 300;
  float barHeight = 30;
  //체력
  fill(100);
  rect(width - barWidth - 20, height - 220, barWidth, barHeight);
  
  fill(0, 255, 0);
  rect(width - barWidth - 20, height - 220, map(hp, 0, mhp, 0, barWidth), barHeight);
  //방어구
  fill(100);
  rect(width - barWidth - 20, height - 260, barWidth, barHeight);
  
  fill(0, 0, 255);
  rect(width - barWidth - 20, height - 260, map(armor, 0, maxArmor, 0, barWidth), barHeight);
}
