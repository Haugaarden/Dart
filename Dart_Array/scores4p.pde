void scores4p() {
  background(255);
  fill(80);
  textSize(height/11);
  text(name[0], width/8, height/8);
  text(name[1], width/8*3, height/8);
  text(name[2], width/8*5, height/8);
  text(name[3], width/8*7, height/8);
  
  strokeWeight(2);
  fill(255);
  if (chosenX != 0 && chosenY != 0) {
    rect(chosenX, chosenY, width/18+2, height/12+2);
  }

  strokeWeight(1);
  fill(255);
  rect(width/8 - width/12, height/8*7, width/18, height/12);
  rect(width/8, height/8*7, width/18, height/12);
  rect(width/8 + width/12, height/8*7, width/18, height/12);
  fill(0);
  textSize(height/16);
  text(score[0], width/8 - width/12, height/8*7, width/18, height/12);
  text(score[1], width/8, height/8*7, width/18, height/12);
  text(score[2], width/8 + width/12, height/8*7, width/15, height/10);

  fill(255);
  rect(width/8*3 - width/12, height/8*7, width/18, height/12);
  rect(width/8*3, height/8*7, width/18, height/12);
  rect(width/8*3 + width/12, height/8*7, width/18, height/12);
  fill(0);
  text(score[3], width/8*3 - width/12, height/8*7, width/18, height/12);
  text(score[4], width/8*3, height/8*7, width/18, height/12);
  text(score[5], width/8*3 + width/12, height/8*7, width/18, height/12);
  
  fill(255);
  rect(width/8*5 - width/12, height/8*7, width/18, height/12);
  rect(width/8*5, height/8*7, width/18, height/12);
  rect(width/8*5 + width/12, height/8*7, width/18, height/12);
  fill(0);
  text(score[6], width/8*5 - width/12, height/8*7, width/18, height/12);
  text(score[7], width/8*5, height/8*7, width/18, height/12);
  text(score[8], width/8*5 + width/12, height/8*7, width/18, height/12);
  
  fill(255);
  rect(width/8*7 - width/12, height/8*7, width/18, height/12);
  rect(width/8*7, height/8*7, width/18, height/12);
  rect(width/8*7 + width/12, height/8*7, width/18, height/12);
  fill(0);
  text(score[9], width/8*7 - width/12, height/8*7, width/18, height/12);
  text(score[10], width/8*7, height/8*7, width/18, height/12);
  text(score[11], width/8*7 + width/12, height/8*7, width/18, height/12);

  textSize(height/10);
  text(int(remain[0]), width/8, height/2);
  text(int(remain[1]), width/8*3, height/2);
  text(int(remain[2]), width/8*5, height/2);
  text(int(remain[3]), width/8*7, height/2);

  line(width/8*2, 0, width/8*2, height);
  line(width/8*4, 0, width/8*4, height);
  line(width/8*6, 0, width/8*6, height);

  scoreInputPicker4();
}

void scoreInputPicker4() {
  if (mousePressed) {
    if (abs(width/8-width/12 - mouseX) < width/36) {
      scoreInput = 0;
    } 
    else if (abs(width/8 - mouseX) < width/36) {
      scoreInput = 1;
    }
    else if (abs(width/8+width/12 - mouseX) < width/36) {
      scoreInput = 2;
    }
    else if (abs(width/8*3-width/12 - mouseX) < width/36) {
      scoreInput = 3;
    }
    else if (abs(width/8*3 - mouseX) < width/36) {
      scoreInput = 4;
    }
    else if (abs(width/8*3+width/12 - mouseX) < width/36) {
      scoreInput = 5;
    }
    else if (abs(width/8*5-width/12 - mouseX) < width/36) {
      scoreInput = 6;
    }
    else if (abs(width/8*5 - mouseX) < width/36) {
      scoreInput = 7;
    }
    else if (abs(width/8*5+width/12 - mouseX) < width/36) {
      scoreInput = 8;
    }
    else if (abs(width/8*7-width/12 - mouseX) < width/36) {
      scoreInput = 9;
    }
    else if (abs(width/8*7 - mouseX) < width/36) {
      scoreInput = 10;
    }
    else if (abs(width/8*7+width/12 - mouseX) < width/36) {
      scoreInput = 11;
    }
  }
  if (tab == 4 && bTab) {
    bTab = false;
    if (player == 1) {
      if (scoreInput > -1 && scoreInput < 2) {
        scoreInput ++;
      }
      else {
        scoreInput = 0;
      }
    }
    if (player == 2) {
      if (scoreInput > 2 && scoreInput < 5) {
        scoreInput ++;
      }
      else {
        scoreInput = 3;
      }
    }
     if (player == 3) {
      if (scoreInput > 5 && scoreInput < 8) {
        scoreInput ++;
      }
      else {
        scoreInput = 6;
      }
    }
    if (player == 4) {
      if (scoreInput > 8 && scoreInput < 11) {
        scoreInput ++;
      }
      else {
        scoreInput = 9;
      }
    }
  }
  if (scoreInput == 0) {
    chosenX = width/8 - width/12;
    chosenY = height/8*7;
  }
  else if (scoreInput == 1) {
    chosenX = width/8;
    chosenY = height/8*7;
  }
  else if (scoreInput == 2) {
    chosenX = width/8 + width/12;
    chosenY = height/8*7;
  }
  else if (scoreInput == 3) {
    chosenX = width/8*3 - width/12;
    chosenY = height/8*7;
  }
  else if (scoreInput == 4) {
    chosenX = width/8*3;
    chosenY = height/8*7;
  }
  else if (scoreInput == 5) {
    chosenX = width/8*3 + width/12;
    chosenY = height/8*7;
  }
  else if (scoreInput == 6) {
    chosenX = width/8*5 - width/12;
    chosenY = height/8*7;
  }
  else if (scoreInput == 7) {
    chosenX = width/8*5;
    chosenY = height/8*7;
  }
  else if (scoreInput == 8) {
    chosenX = width/8*5 + width/12;
    chosenY = height/8*7;
  }
  else if (scoreInput == 9) {
    chosenX = width/8*7 - width/12;
    chosenY = height/8*7;
  }
  else if (scoreInput == 10) {
    chosenX = width/8*7;
    chosenY = height/8*7;
  }
  else if (scoreInput == 11) {
    chosenX = width/8*7 + width/12;
    chosenY = height/8*7;
  }
}
