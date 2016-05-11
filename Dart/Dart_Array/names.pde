void names() {
  
  byte multitude = 1;
  
  background(255);
  textSize(height/14);
  
  for (byte i=0; i<4; i++) {
    if (i > 0) {
      multitude += 2;
    }
  fill(80);
  text(spiller[i], width/8 * multitude, height/2 - height/10);
  fill(0);
  text(name[i], width/8 * multitude, height/2 + height/10);
  }
  
  nameInputPicker();
}

void nameInputPicker() {
  if (mousePressed) {
    if (mouseX < width/4) {
      nameInput = 0;
    }
    else if (mouseX < width/4*2 && mouseX > width/4) {
      nameInput = 1;
    }
    else if (mouseX < width/4*3 && mouseX > width/4*2) {
      nameInput = 2;
    }
    else if (mouseX < width && mouseX > width/4*3) {
      nameInput = 3;
    }
  }
}
