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
    println(this.tick);
    
    if (this.tick > 24) {
      return;
    }
    else {
      textMode(LEFT);
      textSize(16);
      text("\""+data+"\"",x,y,300,100);
      this.tick += 1;
    }
  }
  public void setX(float x){
    this.x = x;
  }
  public void setY(float y){
    this.y = y;
  }
}
