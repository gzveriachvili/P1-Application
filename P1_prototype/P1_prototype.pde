//Milky Wavezzz

import processing.video.*;

//Name for playMovie
Movie game;

//Importing sound library
import processing.sound.*;

//Giving sounds a name
SoundFile pop;

//images
PImage mw_background;
PImage mw_settingsBackground;
PImage mw_colorWheelB;
PImage mw_colorWheelF;
PImage mw_vignette;
PImage mw_logo;
PImage mw_playButton;
PImage mw_playButton_hover;
PImage mw_musicButton;
PImage mw_settingsButton;
PImage mw_game;
PImage mw_backBtn;
PImage mw_musicButton_hover;
PImage mw_settingsButton_hover;

//This is for the settingspage with the color wheel
float foregroundHue = 0;
float backgroundHue = 0;

//variables
int screen = 0;

//Using buttons class to create buttons
Buttons playButton;
Buttons musicButton;
Buttons settingsButton;
Buttons backBtn;
Buttons playButton_hover;
Buttons musicButton_hover;
Buttons settingsButton_hover;

void setup() {

  imageMode(CENTER);
  size(405, 720);

  //Creating new movie
  game = new Movie(this, "playgif.mov");
  game.loop();


  //load images
  mw_background = loadImage("mw_background.png");
  mw_settingsBackground = loadImage("mw_blurredBackgroundB&W.png");
  mw_colorWheelB = loadImage("mw_backgroundColorWheel.png");
  mw_colorWheelF = loadImage("mw_foregroundColorWheel.png");
  mw_vignette = loadImage("mw_vignette.png");
  mw_logo = loadImage("mw_logo.png");  
  mw_playButton = loadImage("mw_playButton.png");
  mw_musicButton = loadImage("mw_musicButton.png");
  mw_settingsButton = loadImage("mw_settingsButton.png");
  mw_game = loadImage("game.png");
  mw_backBtn = loadImage("backBtn.png");
  mw_playButton_hover = loadImage("mw_playButton_hover.png");
  mw_musicButton_hover = loadImage("mw_musicButton_hover.png");
  mw_settingsButton_hover = loadImage("mw_settingsButton_hover.png");


  //resizing the images
  mw_background.resize(width, height);
  mw_settingsBackground.resize(width, height);
  mw_colorWheelB.resize(225, 225);
  mw_colorWheelF.resize(225, 225);
  mw_vignette.resize(width, height);
  mw_logo.resize(313, 166);
  mw_playButton.resize(256, 47);
  mw_musicButton.resize(256, 47);
  mw_settingsButton.resize(256, 47);
  mw_game.resize(width, height);
  mw_backBtn.resize(width, 30);
  mw_playButton_hover.resize(256, 47);
  mw_musicButton_hover.resize(256, 47);
  mw_settingsButton_hover.resize(256, 47);


  //Creating the button for playButton,musicButton, and settingsButton
  playButton = new Buttons(width/2, 492);
  musicButton = new Buttons(width/2, 552);
  settingsButton = new Buttons(width/2, 612);
  backBtn = new Buttons(width/2, 20);
  playButton_hover = new Buttons(width/2, 492);
  musicButton_hover = new Buttons(width/2, 552);
  settingsButton_hover = new Buttons(width/2, 612);

  //loading sounds
  pop = new SoundFile(this, "pop.wav");
}

void draw() {
  //front page
  if (screen == 0) {
    frontScreen();
  }
  if (screen == 1) {
    playScreen();
  }
  if (screen == 2) {
    musicScreen();
  }
  if (screen == 3) {
    settingsScreen();
  }
}

void mouseReleased() {
  if (playButton.mouseDetect() && screen == 0) {
    screen = 1;
    pop.play();
  }
  if (screen == 1) {
    if (backBtn.mouseDetect()) {
      screen = 0;
      pop.play();
    }
  }
  if (musicButton.mouseDetect() && screen == 0) {
    screen = 2;
    pop.play();
  }
  if (screen == 2) {
    if (backBtn.mouseDetect()) {
      screen = 0;
      pop.play();
    }
  }
  if (settingsButton.mouseDetect() && screen == 0) {
    screen = 3;
    pop.play();
  }
  if (screen == 3) {
    if (backBtn.mouseDetect()) {
      screen = 0;
      pop.play();
    }
  }
}
