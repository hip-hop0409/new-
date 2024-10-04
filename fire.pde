void fire() {
  if ((nowW == 1 && A1 > 0) || (nowW == 2 && A2 > 0)) {
    if (nowW == 1) {
      A1--;
    } else if (nowW == 2) {
      A2--;
    }
    
    crh += 2;
    if (crh > 30) {
      crh = 30;
    }
    
    actiontime = millis();
  }
}
