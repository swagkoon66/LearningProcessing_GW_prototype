/* //<>// //<>//
KOON: this will be main file for test running
 */
Unit[] mainCharacterList;
public final float SCALE = 4f;
void setup() {
  frameRate(8);
  background(20);
  size(500, 500);
  mainCharacterList = loadCharacterListFromJSON();
  for (Unit e : mainCharacterList) {
    println(e.toString());
  }
  println("ENDS");

  mainCharacterList[1].setUnitX(0);
  mainCharacterList[1].setUnitY(0);
  mainCharacterList[0].setUnitX(50);
  mainCharacterList[0].setUnitY(50);
}

void draw() {
  background(#64D2DB);
  mainCharacterList[1].behavioursSprites[1].RenderSprite();
  mainCharacterList[0].behavioursSprites[1].RenderSprite();
}
