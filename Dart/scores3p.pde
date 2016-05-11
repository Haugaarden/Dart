void scores3p() {
  background(255);
  fill(80);
  text(name1, width/6, height/8);
  text(name2, width/6*3, height/8);
  text(name3, width/6*5, height/8);

  strokeWeight(2);
  fill(255);
  if (chosenX != 0 && chosenY != 0) {
    rect(chosenX, chosenY, width/15+2, height/10+2);
  }

  strokeWeight(1);
  fill(255);
  rect(width/6 - width/10, height/8*7, width/15, height/10);
  rect(width/6, height/8*7, width/15, height/10);
  rect(width/6 + width/10, height/8*7, width/15, height/10);
  fill(0);
  textSize(height/16);
  text(score1, width/6 - width/10, height/8*7, width/15, height/10);
  text(score2, width/6, height/8*7, width/15, height/10);
  text(score3, width/6 + width/10, height/8*7, width/15, height/10);

  fill(255);
  rect(width/6*3 - width/10, height/8*7, width/15, height/10);
  rect(width/6*3, height/8*7, width/15, height/10);
  rect(width/6*3 + width/10, height/8*7, width/15, height/10);
  fill(0);
  text(score4, width/6*3 - width/10, height/8*7, width/15, height/10);
  text(score5, width/6*3, height/8*7, width/15, height/10);
  text(score6, width/6*3 + width/10, height/8*7, width/15, height/10);
  
  fill(255);
  rect(width/6*5 - width/10, height/8*7, width/15, height/10);
  rect(width/6*5, height/8*7, width/15, height/10);
  rect(width/6*5 + width/10, height/8*7, width/15, height/10);
  fill(0);
  text(score7, width/6*5 - width/10, height/8*7, width/15, height/10);
  text(score8, width/6*5, height/8*7, width/15, height/10);
  text(score9, width/6*5 + width/10, height/8*7, width/15, height/10);

  textSize(height/10);
  text(int(remain1), width/6, height/2);
  text(int(remain2), width/6*3, height/2);
  text(int(remain3), width/6*5, height/2);

  line(width/6*2, 0, width/6*2, height);
  line(width/6*4, 0, width/6*4, height);

  scoreInputPicker3();
}

void scoreInputPicker3() {
  if (mousePressed) {
    if (abs(width/6-width/10 - mouseX) < width/30) {
      scoreInput = 1;
    } 
    else if (abs(width/6 - mouseX) < width/30) {
      scoreInput = 2;
    }
    else if (abs(width/6+width/10 - mouseX) < width/30) {
      scoreInput = 3;
    }
    else if (abs(width/6*3-width/10 - mouseX) < width/30) {
      scoreInput = 4;
    }
    else if (abs(width/6*3 - mouseX) < width/30) {
      scoreInput = 5;
    }
    else if (abs(width/6*3+width/10 - mouseX) < width/30) {
      scoreInput = 6;
    }
    else if (abs(width/6*5-width/10 - mouseX) < width/30) {
      scoreInput = 7;
    }
    else if (abs(width/6*5 - mouseX) < width/30) {
      scoreInput = 8;
    }
    else if (abs(width/6*5+width/10 - mouseX) < width/30) {
      scoreInput = 9;
    }
  }
  if (tab == 3 && bTab) {
    bTab = false;
    if (player == 1) {
      if (scoreInput > 0 && scoreInput < 3) {
        scoreInput ++;
      }
      else {
        scoreInput = 1;
      }
    }
    if (player == 2) {
      if (scoreInput > 3 && scoreInput < 6) {
        scoreInput ++;
      }
      else {
        scoreInput = 4;
      }
    }
     if (player == 3) {
      if (scoreInput > 6 && scoreInput < 9) {
        scoreInput ++;
      }
      else {
        scoreInput = 7;
      }
    }
  }
  if (scoreInput == 1) {
    chosenX = width/6 - width/10;
    chosenY = height/8*7;
  }
  else if (scoreInput == 2) {
    chosenX = width/6;
    chosenY = height/8*7;
  }
  else if (scoreInput == 3) {
    chosenX = width/6 + width/10;
    chosenY = height/8*7;
  }
  else if (scoreInput == 4) {
    chosenX = width/6*3 - width/10;
    chosenY = height/8*7;
  }
  else if (scoreInput == 5) {
    chosenX = width/6*3;
    chosenY = height/8*7;
  }
  else if (scoreInput == 6) {
    chosenX = width/6*3 + width/10;
    chosenY = height/8*7;
  }
  else if (scoreInput == 7) {
    chosenX = width/6*5 - width/10;
    chosenY = height/8*7;
  }
  else if (scoreInput == 8) {
    chosenX = width/6*5;
    chosenY = height/8*7;
  }
  else if (scoreInput == 9) {
    chosenX = width/6*5 + width/10;
    chosenY = height/8*7;
  }
}

