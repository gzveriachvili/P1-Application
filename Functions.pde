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
  image(mw_backBtn, width/2, 15);
  backBtn.mouseDetect();
}

void musicScreen() {
  background(0);
  image(mw_backBtn, width/2, 15);
  backBtn.mouseDetect();
}

void settingsScreen() {
  image(mw_settingsBackground, width/2, height/2);
  image(mw_backBtn, width/2, 15);
  backBtn.mouseDetect();
}
