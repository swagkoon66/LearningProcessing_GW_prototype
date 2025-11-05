/*
KOON: this will be main file for running
*/
Sprite Warrior;
PImage test;
public final float SCALE = 4.0f;
void setup(){ 
  frameRate(8);
  background(20);
  size(300,300);
  Warrior = new Sprite("Warrior","Warrior\\Attack",1,12);
  
}

void draw() {
  background(20);
  Warrior.RenderSprite();
   
}
