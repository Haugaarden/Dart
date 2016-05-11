String[] name = {"", "", "", ""};

String goal = "";

byte player = 1;

int chosenX, chosenY;
byte tab;
boolean bTab;

String[] score = {"", "", "", "", "", "", "", "", "", "", "", ""};

float[] remain;
float[] sum;

float[] floatScore;

float floatGoal;

byte currentScreen;
byte players;

String spiller[] = {"Spiller 1:", "Spiller 2:", "Spiller 3:", "Spiller 4:"};
String g = "Mål:";

byte nameInput, scoreInput;

void setup() {
  size(displayWidth, displayHeight);
  textAlign(CENTER, CENTER);
  textSize(height/12);
  rectMode(CENTER);
  
  remain = new float[4];
  sum = new float[4];
  floatScore = new float[12];
}

void draw() {
  switch (currentScreen) {
  case 0:
    names();
    break;
  case 1:
    goal();
    break;
  case 2:
    scores1p();
    break;
  case 3:
    scores2p();
    break;
  case 4:
    scores3p();
    break;
  case 5:
    scores4p();
    break;
  default:
    background(0);
    break;
  }
}

void keyPressed() {
  // names
  if (currentScreen == 0) {
    if (keyCode == BACKSPACE) {
      if (name[nameInput].length() > 0) {
        name[nameInput] = name[nameInput].substring(0, name[nameInput].length()-1);
      }
    }

    else if (keyCode != SHIFT && keyCode != CONTROL && keyCode != ALT && keyCode!= DELETE && keyCode != ENTER && key != TAB) {
        name[nameInput] = name[nameInput] + key;
    }

    else if (keyCode == ENTER) {
      if (name[0] != "" && name[1] == "") {
        players = 1;
      }
      else if (name[1] != "" && name[2] == "") {
        players = 2;
      }
      else if (name[2] != "" && name[3] == "") {
        players = 3;
      }
      else if (name[3] != "") {
        players = 4;
      }
      currentScreen = 1;
    }
  }

  // goal
  else if (currentScreen == 1) {
    if (keyCode == BACKSPACE && goal.length() > 0) {
      goal = goal.substring(0, goal.length()-1);
    }

    //else if (keyCode != SHIFT && keyCode != CONTROL && keyCode != ALT && keyCode!= DELETE && keyCode != ENTER && key != TAB) {
      else if (key == '0' || key == '1' || key == '2' || key == '3' || key == '4' || key == '5' || key == '6' || key == '7' || key == '8' || key == '9') {
      goal = goal + key;
    }

    else if (keyCode == ENTER) {
      if (goal.length() > 0) {
        floatGoal = Float.parseFloat(goal);
        
        for (byte i=0; i<4; i++) {
          remain[i] = floatGoal;
        }
        
        scoreInput = 0;

        if (players == 1) {
          currentScreen = 2;
        }
        else if (players == 2) {
          currentScreen = 3;
        }
        else if (players == 3) {
          currentScreen = 4;
        }
        else if (players == 4) {
          currentScreen = 5;
        }
      }
    }
  }

  // scores
  else if (currentScreen >= 2 && currentScreen <= 5) {
    if (keyCode == BACKSPACE) {
      if (score[scoreInput].length() > 0) {
        score[scoreInput] = score[scoreInput].substring(0, score[scoreInput].length()-1);
      }
    } else if (key == '0' || key == '1' || key == '2' || key == '3' || key == '4' || key == '5' || key == '6' || key == '7' || key == '8' || key == '9') {
        score[scoreInput] = score[scoreInput] + key;
    } else if (keyCode == ENTER) {
        for (byte i=0; i<12; i++) {
          floatScore[i] = 0;
        }

      for (byte i=0; i<12; i++) {
        if (score[i].length() > 0) {
          floatScore[i] = Float.parseFloat(score[i]);
          score[i] = "";
        }
      }

      calculate();
    }

    if (key == 'r' || key == 'R') {
      restart();
    }
    if (key == TAB) {
      bTab = true;
      if (currentScreen == 2) {
        tab = 1;
      }
      else if (currentScreen == 3) {
        tab = 2;
      }
      else if (currentScreen == 4) {
        tab = 3;
      }
      else if (currentScreen == 5) {
        tab = 4;
      }
    }
  }
}

