/* //<>//
KOON: this will be main file for running
 */
Unit[] mainCharacterList;
public final float SCALE = 4.0f;
void setup() {
  frameRate(8);
  background(20);
  size(300, 300);
  println("STARTS");
  mainCharacterList = loadCharacterListFromJSON();
  for (Unit e : mainCharacterList) {
    println(e.toString());
  }
  println("ENDS");
}

void draw() {
  background(#64D2DB);
  mainCharacterList[0].behavioursSprites[1].RenderSprite();
}
