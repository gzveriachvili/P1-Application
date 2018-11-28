//Milky Wavezzz

//images
PImage mk_background;
PImage mk_vignette;
PImage mk_logo;
PImage mk_playButton;
PImage mk_musicButton;
PImage mk_settingsButton;

//variables
int screen = 0;

void setup() {

  size(405, 720);

//load images
  mk_background = loadImage("mk_background.png");
  mk_vignette = loadImage("mk_vignette.png");
  mk_logo = loadImage("mk_logo.png");
  mk_playButton = loadImage("mk_playButton.png");
  mk_musicButton = loadImage("mk_musicButton.png");
  mk_settingsButton = loadImage("mk_settingsButton.png");
}

void draw() {

  //front page
  if (screen == 0) {
    imageMode(CORNER);
    mk_background.resize(405, 720);
    image(mk_background, 0, 0);
    mk_vignette.resize(405, 720);
    image(mk_vignette, 0, 0);
    imageMode(CENTER);
    mk_logo.resize(313, 166);
    image(mk_logo, width/2 + 20, 200);
    mk_playButton.resize(256, 47);
    image(mk_playButton, width/2, 492);
    mk_musicButton.resize(256, 47);
    image(mk_musicButton, width/2, 552);
    mk_settingsButton.resize(256, 47);
    image(mk_settingsButton, width/2, 612);
    
  }
}
