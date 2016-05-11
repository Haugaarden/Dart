String name1 = "";
String name2 = "";
String name3 = "";
String name4 = "";
String goal = "";

byte player = 1;

int chosenX, chosenY;
byte tab;
boolean bTab;

String score1 = "";
String score2 = "";
String score3 = "";
String score4 = "";
String score5 = "";
String score6 = "";
String score7 = "";
String score8 = "";
String score9 = "";
String score10 = "";
String score11 = "";
String score12 = "";

float remain1, remain2, remain3, remain4;
float sum1, sum2, sum3, sum4;

float floatScore1 = 0;
float floatScore2 = 0;
float floatScore3 = 0;
float floatScore4 = 0;
float floatScore5 = 0;
float floatScore6 = 0;
float floatScore7 = 0;
float floatScore8 = 0;
float floatScore9 = 0;
float floatScore10 = 0;
float floatScore11 = 0;
float floatScore12 = 0;

float floatGoal;

byte currentScreen;
byte players;

String s1 = "Spiller 1:";
String s2 = "Spiller 2:";
String s3 = "Spiller 3:";
String s4 = "Spiller 4:";
String g = "Mål:";

byte nameInput, scoreInput;

void setup() {
  size(displayWidth, displayHeight);
  textAlign(CENTER, CENTER);
  textSize(height/12);
  rectMode(CENTER);
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
      if (nameInput == 1 && name1.length() > 0) {
        name1 = name1.substring(0, name1.length()-1);
      }
      else if (nameInput == 2 && name2.length() > 0) {
        name2 = name2.substring(0, name2.length()-1);
      }
      else if (nameInput == 3 && name3.length() > 0) {
        name3 = name3.substring(0, name3.length()-1);
      }
      else if (nameInput == 4 && name4.length() > 0) {
        name4 = name4.substring(0, name4.length()-1);
      }
    }

    else if (keyCode != SHIFT && keyCode != CONTROL && keyCode != ALT && keyCode!= DELETE && keyCode != ENTER && key != TAB) {
      if (nameInput == 1)
      {
        name1 = name1 + key;
      }
      else if (nameInput == 2)
      {
        name2 = name2 + key;
      }
      else if (nameInput == 3)
      {
        name3 = name3 + key;
      }
      else if (nameInput == 4)
      {
        name4 = name4 + key;
      }
    }

    else if (keyCode == ENTER) {
      if (name1 != "" && name2 == "") {
        players = 1;
      }
      else if (name2 != "" && name3 == "") {
        players = 2;
      }
      else if (name3 != "" && name4 == "") {
        players = 3;
      }
      else if (name4 != "") {
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
        remain1 = floatGoal;
        remain2 = floatGoal;
        remain3 = floatGoal;
        remain4 = floatGoal;
        scoreInput = 1;

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
      if (scoreInput == 1 && score1.length() > 0) {
        score1 = score1.substring(0, score1.length()-1);
      }
      else if (scoreInput == 2 && score2.length() > 0) {
        score2 = score2.substring(0, score2.length()-1);
      }
      else if (scoreInput == 3 && score3.length() > 0) {
        score3 = score3.substring(0, score3.length()-1);
      }
      else if (scoreInput == 4 && score4.length() > 0) {
        score4 = score4.substring(0, score4.length()-1);
      }
      else if (scoreInput == 5 && score5.length() > 0) {
        score5 = score5.substring(0, score5.length()-1);
      }
      else if (scoreInput == 6 && score6.length() > 0) {
        score6 = score6.substring(0, score6.length()-1);
      }
      else if (scoreInput == 7 && score7.length() > 0) {
        score7 = score7.substring(0, score7.length()-1);
      }
      else if (scoreInput == 8 && score8.length() > 0) {
        score8 = score8.substring(0, score8.length()-1);
      }
      else if (scoreInput == 9 && score9.length() > 0) {
        score9 = score9.substring(0, score9.length()-1);
      }
      else if (scoreInput == 10 && score10.length() > 0) {
        score10 = score10.substring(0, score10.length()-1);
      }
      else if (scoreInput == 11 && score11.length() > 0) {
        score11 = score11.substring(0, score11.length()-1);
      }
      else if (scoreInput == 12 && score12.length() > 0) {
        score12 = score12.substring(0, score12.length()-1);
      }
    }
    //else if (keyCode != SHIFT && keyCode != CONTROL && keyCode != ALT && keyCode!= DELETE && keyCode != ENTER && key != TAB) {
      else if (key == '0' || key == '1' || key == '2' || key == '3' || key == '4' || key == '5' || key == '6' || key == '7' || key == '8' || key == '9') {
      if (scoreInput == 1)
      {
        score1 = score1 + key;
      }
      else if (scoreInput == 2)
      {
        score2 = score2 + key;
      }
      else if (scoreInput == 3)
      {
        score3 = score3 + key;
      }
      else if (scoreInput == 4)
      {
        score4 = score4 + key;
      }
      else if (scoreInput == 5)
      {
        score5 = score5 + key;
      }
      else if (scoreInput == 6)
      {
        score6 = score6 + key;
      }
      if (scoreInput == 7)
      {
        score7 = score7 + key;
      }
      else if (scoreInput == 8)
      {
        score8 = score8 + key;
      }
      else if (scoreInput == 9)
      {
        score9 = score9 + key;
      }
      else if (scoreInput == 10)
      {
        score10 = score10 + key;
      }
      else if (scoreInput == 11)
      {
        score11 = score11 + key;
      }
      else if (scoreInput == 12)
      {
        score12 = score12 + key;
      }
    }
    else if (keyCode == ENTER) {

      floatScore1 = 0;
      floatScore2 = 0;
      floatScore3 = 0;
      floatScore4 = 0;
      floatScore5 = 0;
      floatScore6 = 0;
      floatScore7 = 0;
      floatScore8 = 0;
      floatScore9 = 0;
      floatScore10 = 0;
      floatScore11 = 0;
      floatScore12 = 0;

      if (score1.length() > 0) {
        floatScore1 = Float.parseFloat(score1);
        score1 = "";
      }
      if (score2.length() > 0) {
        floatScore2 = Float.parseFloat(score2);
        score2 = "";
      }
      if (score3.length() > 0) {
        floatScore3 = Float.parseFloat(score3);
        score3 = "";
      }
      if (score4.length() > 0) {
        floatScore4 = Float.parseFloat(score4);
        score4 = "";
      }
      if (score5.length() > 0) {
        floatScore5 = Float.parseFloat(score5);
        score5 = "";
      }
      if (score6.length() > 0) {
        floatScore6 = Float.parseFloat(score6);
        score6 = "";
      }
      if (score7.length() > 0) {
        floatScore7 = Float.parseFloat(score7);
        score7 = "";
      }
      if (score8.length() > 0) {
        floatScore8 = Float.parseFloat(score8);
        score8 = "";
      }
      if (score9.length() > 0) {
        floatScore9 = Float.parseFloat(score9);
        score9 = "";
      }
      if (score10.length() > 0) {
        floatScore10 = Float.parseFloat(score10);
        score10 = "";
      }
      if (score11.length() > 0) {
        floatScore11 = Float.parseFloat(score11);
        score11 = "";
      }
      if (score12.length() > 0) {
        floatScore12 = Float.parseFloat(score12);
        score12 = "";
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

