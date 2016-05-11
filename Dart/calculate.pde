void calculate() {
  sum1 = sum1 + floatScore1 + floatScore2 + floatScore3;
  sum2 = sum2 + floatScore4 + floatScore5 + floatScore6;
  sum3 = sum3 + floatScore7 + floatScore8 + floatScore9;
  sum4 = sum4 + floatScore10 + floatScore11 + floatScore12;
  ;

  if (sum1 <= floatGoal && floatGoal - sum1 != 1) {
    remain1 = floatGoal - sum1;
  } 
  else {
    sum1 = sum1 - floatScore1 - floatScore2 - floatScore3;
  }
  if (sum2 <=floatGoal && floatGoal - sum2 != 1) {
    remain2 = floatGoal - sum2;
  }  
  else {
    sum2 = sum2 - floatScore4 - floatScore5 - floatScore6;
  }
  if (sum3 <= floatGoal && floatGoal - sum3 != 1) {
    remain3 = floatGoal - sum3;
  } 
  else {
    sum3 = sum3 - floatScore7 - floatScore8 - floatScore9;
  }
  if (sum4 <=floatGoal && floatGoal - sum4 != 1) {
    remain4 = floatGoal - sum4;
  }  
  else {
    sum4 = sum4 - floatScore10 - floatScore11 - floatScore12;
  }

  if (players == 1) {
    scoreInput = 1;
  }
  else if (players == 2) {
    if (scoreInput <= 3) {
      scoreInput = 4;
      player = 2;
    } 
    else {
      scoreInput = 1;
      player = 1;
    }
  }
  else if (players == 3) {
    if (scoreInput <= 3) {
      scoreInput = 4;
      player = 2;
    } 
    else if (scoreInput <= 6) {
      scoreInput = 7;
      player = 3;
    } 
    else {
      scoreInput = 1;
      player = 1;
    }
  }
  else if (players == 4) {
    if (scoreInput <= 3) {
      scoreInput = 4;
      player = 2;
    } 
    else if (scoreInput <= 6) {
      scoreInput = 7;
      player = 3;
    } 
    else if (scoreInput <= 9) {
      scoreInput = 10;
      player = 4;
    }
    else {
      scoreInput = 1;
      player = 1;
    }
  }
}

