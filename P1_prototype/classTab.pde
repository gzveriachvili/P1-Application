class Buttons {
  PVector Posi = new PVector(width/2, 492);
  PVector Size = new PVector(256, 47);
  Buttons(int x, int y) {
    Posi.x = x;
    Posi.y = y;
  }
  boolean mouseDetect () {
    if (mouseX > Posi.x - Size.x/2 && mouseX< Posi.x + Size.x/2 && mouseY > Posi.y - Size.y/2 && mouseY < Posi.y + Size.y/2) {
      return true;
    } else {
      return false;
    }
  }
}
