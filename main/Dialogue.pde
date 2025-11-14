public class Dialogue {
  float x = 0;
  float y = 50;
  int tick = 0;
  String data;

  public Dialogue(String d) {
    this.data = d;
  }

  public String toString() {
    return this.data;
  }
  public void renderDialogue() {
    //println(this.tick);

    if (this.tick > 24) {
      return;
    } else {
      rectMode(CORNER);
      fill(#FFFFFF);
      rect(this.x-10, this.y-50, 220, 50, 72, 48, 48, 72);
      textMode(LEFT);
      textSize(16);
      fill(#000000);
      text("\""+data+"\"", this.x, this.y-35, 200, 50);
      this.tick += 1;
    }
  }
  public void setX(float x) {
    this.x = x;
  }
  public void setY(float y) {
    this.y = y;
  }
}
