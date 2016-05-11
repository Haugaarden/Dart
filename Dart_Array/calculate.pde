void calculate() {
  
  byte addon = 0;
  
  for (byte i=0; i<4; i++) {
    if (i > 0) {
      addon += 2;
    }
  sum[i] = sum[i] + floatScore[addon+i] + floatScore[addon+i+1] + floatScore[addon+i+2];
  
  if (sum[i] <= floatGoal && floatGoal - sum[i] != 1) {
      remain[i] = floatGoal - sum[i];
    } else {
        sum[i] = sum[i] - floatScore[addon+i] - floatScore[addon+i+1] - floatScore[addon+i+2];
    }
  }

  if (players == 1) {
    scoreInput = 0;
  }
  else if (players == 2) {
    if (scoreInput <= 2) {
      scoreInput = 3;
      player = 2;
    } 
    else {
      scoreInput = 0;
      player = 1;
    }
  }
  else if (players == 3) {
    if (scoreInput <= 2) {
      scoreInput = 3;
      player = 2;
    } 
    else if (scoreInput <= 5) {
      scoreInput = 6;
      player = 3;
    } 
    else {
      scoreInput = 0;
      player = 1;
    }
  }
  else if (players == 4) {
    if (scoreInput <= 2) {
      scoreInput = 3;
      player = 2;
    } 
    else if (scoreInput <= 5) {
      scoreInput = 6;
      player = 3;
    } 
    else if (scoreInput <= 8) {
      scoreInput = 9;
      player = 4;
    }
    else {
      scoreInput = 0;
      player = 1;
    }
  }
}

