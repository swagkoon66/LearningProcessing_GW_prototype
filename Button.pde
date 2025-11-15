public class Button {
  int x = 0;
  int y = 0;
  int id = -1;
  int size = 100;
  boolean state = false;
  public Button(int x, int y, int id, int size) {
    this.x = x;
    this.y = y;
    this.id = id;
    this.size = size;
  }


  public void renderButton() {
    if (this.state == true) fill(#02AA35);
    else fill(#9FEA1F);
    rectMode(CORNER);
    rect(this.x, this.y, size, size);
    fill(#F00C36);
    textSize(28);
    textAlign(CENTER);
    text(this.id, this.x+size/2, this.y+size/2+10);
  }

  public int detectButton() {
    //println(this.id + " " + this.state);
    if ((mouseX > this.x) && (mouseX < this.x + size) && (mouseY > this.y) && (mouseY < this.y + size) && mousePressed) {
      if (this.state == true) {
        this.state = !this.state;
        return 0;
      } else {
        this.state = !this.state;
        return this.id;
      }
    }
    else {
      if (this.state == true){
        return this.id;
      }
      else {
        return 0;
      }
    }
  }
}
