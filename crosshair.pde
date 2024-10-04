float crh = 10;//크로스헤어관련사이즈
void drawCross() {
  noFill();
  stroke(255);
  circle(width / 2, height / 2, crh); //원형크로스헤어
  
  shrinkCrosshair(); //크로스헤어 감소 함수
}

void shrinkCrosshair() {
  if (crh > 10) {
    crh -= 0.1;
  }
}//사격하지 않을 시 크로스헤어 크기 감소
