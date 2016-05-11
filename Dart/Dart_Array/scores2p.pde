void scores2p() {
  background(255);
  fill(80);
  text(name[0], width/4, height/8);
  text(name[1], width/4*3, height/8);

  strokeWeight(2);
  fill(255);
  if (chosenX != 0 && chosenY != 0) {
    rect(chosenX, chosenY, width/15+2, height/10+2);
  }

  strokeWeight(1);
  fill(255);
  rect(width/4 - width/10, height/8*7, width/15, height/10);
  rect(width/4, height/8*7, width/15, height/10);
  rect(width/4 + width/10, height/8*7, width/15, height/10);
  fill(0);
  textSize(height/16);
  text(score[0], width/4 - width/10, height/8*7, width/15, height/10);
  text(score[1], width/4, height/8*7, width/15, height/10);
  text(score[2], width/4 + width/10, height/8*7, width/15, height/10);

  fill(255);
  rect(width/4*3 - width/10, height/8*7, width/15, height/10);
  rect(width/4*3, height/8*7, width/15, height/10);
  rect(width/4*3 + width/10, height/8*7, width/15, height/10);
  fill(0);
  text(score[3], width/4*3 - width/10, height/8*7, width/15, height/10);
  text(score[4], width/4*3, height/8*7, width/15, height/10);
  text(score[5], width/4*3 + width/10, height/8*7, width/15, height/10);

  textSize(height/10);
  text(int(remain[0]), width/4, height/2);
  text(int(remain[1]), width/4*3, height/2);

  line(width/2, 0, width/2, height);

  scoreInputPicker2();
}

void scoreInputPicker2() {
  if (mousePressed) {
    if (abs(width/4-width/10 - mouseX) < width/30) {
      scoreInput = 0;
    } 
    else if (abs(width/4 - mouseX) < width/30) {
      scoreInput = 1;
    }
    else if (abs(width/4+width/10 - mouseX) < width/30) {
      scoreInput = 2;
    }
    else if (abs(width/4*3-width/10 - mouseX) < width/30) {
      scoreInput = 3;
    }
    else if (abs(width/4*3 - mouseX) < width/30) {
      scoreInput = 4;
    }
    else if (abs(width/4*3+width/10 - mouseX) < width/30) {
      scoreInput = 5;
    }
  }
  if (tab == 2 && bTab) {
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
  }
  if (scoreInput == 0) {
    chosenX = width/4 - width/10;
    chosenY = height/8*7;
  }
  else if (scoreInput == 1) {
    chosenX = width/4;
    chosenY = height/8*7;
  }
  else if (scoreInput == 2) {
    chosenX = width/4 + width/10;
    chosenY = height/8*7;
  }
  else if (scoreInput == 3) {
    chosenX = width/4*3 - width/10;
    chosenY = height/8*7;
  }
  else if (scoreInput == 4) {
    chosenX = width/4*3;
    chosenY = height/8*7;
  }
  else if (scoreInput == 5) {
    chosenX = width/4*3 + width/10;
    chosenY = height/8*7;
  }
}

