void names() {
  background(255);
  fill(80);
  textSize(height/14);
  text(s1, width/8, height/2 - height/10);
  text(s2, width/8*3, height/2 - height/10);
  text(s3, width/8*5, height/2 - height/10);
  text(s4, width/8*7, height/2 - height/10);
  fill(0);
  text(name1, width/8, height/2 + height/10);
  text(name2, width/8*3, height/2 + height/10);
  text(name3, width/8*5, height/2 + height/10);
  text(name4, width/8*7, height/2 + height/10);
  
  nameInputPicker();
}

void nameInputPicker() {
  if (mousePressed) {
    if (mouseX < width/4) {
      nameInput = 1;
    }
    else if (mouseX < width/4*2 && mouseX > width/4) {
      nameInput = 2;
    }
    else if (mouseX < width/4*3 && mouseX > width/4*2) {
      nameInput = 3;
    }
    else if (mouseX < width && mouseX > width/4*3) {
      nameInput = 4;
    }
  }
}
