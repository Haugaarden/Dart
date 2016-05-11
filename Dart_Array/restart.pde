void restart() {
  for (byte i=0; i<4; i++) {
    remain[i] = floatGoal;
    sum[i] = 0;
  }
  
  for (byte i=0; i<12; i++) {
    score[i] = "";
  }
  
  scoreInput = 1;
  player = 1;
}
