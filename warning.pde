void Warning() {
  noFill();
  stroke(255, 0, 0);
  strokeWeight(5);
  circle(width / 2, height / 2, crh + 30);
  strokeWeight(1);
}
//일정시간이 지나면 크로스헤어 주위에 빨간 원이 생김 (데미지 인디케이터)
