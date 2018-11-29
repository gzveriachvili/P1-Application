//Milky Wavezzz

//images
PImage mw_background;
PImage mw_vignette;
PImage mw_logo;
PImage mw_playButton;
PImage mw_musicButton;
PImage mw_settingsButton;

//variables
int screen = 0;

void setup() {
  imageMode(CENTER);
  size(405, 720);

//load images
  mw_background = loadImage("mw_background.png");
  mw_vignette = loadImage("mw_vignette.png");
  mw_logo = loadImage("mw_logo.png");
  mw_playButton = loadImage("mw_playButton.png");
  mw_musicButton = loadImage("mw_musicButton.png");
  mw_settingsButton = loadImage("mw_settingsButton.png");
  
//resizing the images
  mw_background.resize(405, 720);
  mw_vignette.resize(405, 720);
  mw_logo.resize(313, 166);
  mw_playButton.resize(256, 47);
  mw_musicButton.resize(256, 47);
  mw_settingsButton.resize(256, 47);
}

void draw() {

  //front page
  if (screen == 0) {
    image(mw_background, width/2, height/2);
    image(mw_vignette, width/2, height/2);
    image(mw_logo, width/2 + 20, 200);
    image(mw_playButton, width/2, 492);
    image(mw_musicButton, width/2, 552);
    image(mw_settingsButton, width/2, 612);
  }
}
