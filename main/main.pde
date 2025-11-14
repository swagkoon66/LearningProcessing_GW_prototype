/* //<>// //<>//
 KOON: this will be main file for test running
 */
Unit[] mainCharacterList;
public final float SCALE = 4f;
void setup() {
  frameRate(8);
  background(20);
  size(500, 500);
  mainCharacterList = loadCharacterDataListFromJSON();
  for (Unit e : mainCharacterList) {
    println(e.toString());
  }
  println("ENDS");
  mainCharacterList[0].dialoguesArray[1].setY(100f);
  mainCharacterList[1].dialoguesArray[1].setY(200f);
}

void draw() {
  background(#64D2DB);

  for (Unit e : mainCharacterList) {
    e.dialoguesArray[1].renderDialogue();
  }
}
