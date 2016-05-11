void scores1p() {
  background(255);
  fill(80);
  text(name[0], width/2, height/8);

  strokeWeight(2);
  fill(255);
  if (chosenX != 0 && chosenY != 0) {
    rect(chosenX, chosenY, width/15+2, height/10+2);
  }

  strokeWeight(1);
  fill(255);
  rect(width/2 - width/10, height/8*7, width/15, height/10);
  rect(width/2, height/8*7, width/15, height/10);
  rect(width/2 + width/10, height/8*7, width/15, height/10);
  fill(0);
  textSize(height/16);
  text(score[0], width/2 - width/10, height/8*7, width/15, height/10);
  text(score[1], width/2, height/8*7, width/15, height/10);
  text(score[2], width/2 + width/10, height/8*7, width/15, height/10);

  textSize(height/10);
  text(int(remain[0]), width/2, height/2);

  scoreInputPicker1();
}

void scoreInputPicker1() {
  if (mousePressed) {
    if (abs(width/2-width/10 - mouseX) < width/30) {
      scoreInput = 0;
    } 
    else if (abs(width/2 - mouseX) < width/30) {
      scoreInput = 1;
    }
    else if (abs(width/2+width/10 - mouseX) < width/30) {
      scoreInput = 2;
    }
  }
  if (tab == 1 && bTab) {
    bTab = false;
    if (scoreInput > -1 && scoreInput < 2) {
      scoreInput ++;
    } 
    else {
      scoreInput = 0;
    }
  }
  if (scoreInput == 0) {
    chosenX = width/2 - width/10;
    chosenY = height/8*7;
  }
  else if (scoreInput == 1) {
    chosenX = width/2;
    chosenY = height/8*7;
  }
  else if (scoreInput == 2) {
    chosenX = width/2 + width/10;
    chosenY = height/8*7;
  }
}

