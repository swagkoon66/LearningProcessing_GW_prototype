/* //<>//
 KOON: this will be new main file for running
 */
CharacterBrowser cb = new CharacterBrowser();
public final float SCALE = 4f;

void setup() {
  frameRate(8);
  background(20);
  size(800, 800);
  cb.loadAllCharacters();
  cb.loadButtons();
}

void draw() {
  background(#64D2DB);
  cb.renderAllCharacters();
  cb.renderButtons();
  cb.detectAllButtons();
  cb.showSelectedId();
}
