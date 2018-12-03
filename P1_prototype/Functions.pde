void frontScreen() {
  image(mw_background, width/2, height/2);
  image(mw_vignette, width/2, height/2);
  image(mw_logo, width/2 + 20, 225);
  image(mw_playButton, width/2, 492);
  image(mw_musicButton, width/2, 552);
  image(mw_settingsButton, width/2, 612);
  playButton.mouseDetect();
  musicButton.mouseDetect();
  settingsButton.mouseDetect();
  playButton_hover.playHover();
  musicButton_hover.musicHover();
  settingsButton_hover.settingsHover();
}

void playScreen() {
  image(mw_game, width/2, height/2);
  if (game.available()) {
    game.read();
  }
  image(game, width/2, height/2);
  image(mw_backBtn, width/2, 15);

  backBtn.mouseDetect();
}

void musicScreen() {
  background(0);
  image(mw_backBtn, width/2, 15);
  backBtn.mouseDetect();
}

void settingsScreen() {
  //We change the color mode to be HSB instead of RGB
  colorMode(HSB);
  //foregroundHue is a global variable that is declared to 0, but it gets a value further down.
  tint(backgroundHue, 255, 255);
  image(mw_settingsBackground, width/2, height/2);
  noTint();
  image(mw_colorWheelF, width/2, 300);
  image(mw_colorWheelB, width/2, 600);
  // we reset the color mode back to RGB
  colorMode(RGB);


  image(mw_backBtn, width/2, 15);
  backBtn.mouseDetect();

  //THIS IS FOR THE FOREGROUND WHEEL/////////////////////////////////////////////////////////////////////////////////////////////

  //We declare a vector with the mouseposition
  PVector mousePos = new PVector(mouseX, mouseY);
  //A vector with the colorwheel position
  PVector wheelPos = new PVector(width/2, 300);
  //A vector that calculates the distance between the wheel position and the mouse position
  PVector dist = PVector.sub(wheelPos, mousePos);
  float distance = dist.mag();
  //The radius of the wheel
  float radius = 112.5;

  //If the the distance which is the mouse position is within the radius, do this:
  if (distance < radius) {
    //We need a standard vector that point the the right in order to calculate an angle
    PVector rightVector = new PVector(1, 0);
    //Then we get the angle between the mouse position and the standard vector (rightVector), and declare it to a float
    float angle = PVector.angleBetween(dist, rightVector);
    //We need the angle in degrees not radians
    angle = degrees(angle);
    //Now we have the problem that the circle is 360 degress and the HSB only goes to a maximum of 255, so we use the map function to shorten the degrees to only go to 255 
    //We can now set our global variable with the angle that is within the 255
    if (mouseY > 300) {
      angle += 180;
    }
    foregroundHue = map(angle, 0, 360, 0, 255);
  }

  //THIS IS FOR THE BACKGROUND WHEEL, WITH THE SAME VARIABLES //////////////////////////////////////////////////////////////////////

  //We declare a vector with the mouseposition
  PVector mousePos2 = new PVector(mouseX, mouseY);
  //A vector with the colorwheel position
  PVector wheelPos2 = new PVector(width/2, 600);
  //A vector that calculates the distance between the wheel position and the mouse position
  PVector dist2 = PVector.sub(wheelPos2, mousePos2);
  float distance2 = dist2.mag();
  //The radius of the wheel
  float radius2 = 112.5;

  //If the the distance which is the mouse position is within the radius, do this:
  if (distance2 < radius2) {
    //We need a standard vector that point the the right in order to calculate an angle
    PVector rightVector2 = new PVector(1, 0);
    //Then we get the angle between the mouse position and the standard vector (rightVector), and declare it to a float
    float angle2 = PVector.angleBetween(dist2, rightVector2);
    //We need the angle in degrees not radians
    angle2 = degrees(angle2);

    angle2 += 180;
    //Now we have the problem that the circle is 360 degress and the HSB only goes to a maximum of 255, so we use the map function to shorten the degrees to only go to 255 
    //We can now set our global variable with the angle that is within the 255
    if (mouseY > 600) {
      
    }
    backgroundHue = map(angle2, 0, 360, 0, 255);
    text(angle2, mouseX, mouseY);
  }
}
