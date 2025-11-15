public class CharacterBrowser {
  Unit[] mainCharacterList;
  Button[] buttonsListLEFT;
  Button[] buttonsListRIGHT;

  
  int buttonXoffset = 20;
  int buttonYoffset = 25;
  int buttonX = 30;
  int buttonY = 550;
  int buttonSize = 100;


  public int filp = 1;
  public int[] char1id = null;
  public int[] char2id = null;

  public void loadAllCharacters() {
    mainCharacterList = loadCharacterDataListFromJSON();
    for (Unit e : mainCharacterList) {
      println(e.toString());
    }

    buttonsListLEFT = new Button[mainCharacterList.length];
    buttonsListRIGHT = new Button[mainCharacterList.length];
    char1id = new int[mainCharacterList.length];
    char2id = new int[mainCharacterList.length];
  }
  public void loadButtons() {
    for (int i = 0; i < buttonsListLEFT.length; i ++) {
      buttonsListLEFT[i] = new Button(buttonX + buttonXoffset*i + buttonSize*i, buttonY +buttonYoffset*((i+1)/(6+1)), (i+1), buttonSize);
      buttonsListRIGHT[i] = new Button(buttonX + buttonXoffset*i + buttonSize*i, buttonY +buttonYoffset*(((i+1)/(6+1))+1) + buttonSize*(((i+1)/(6+1))+1), (i+1), buttonSize);
    }
  }
  public void renderAllCharacters() {
    for (Unit e : mainCharacterList) {
      e.renderHPbar();
      e.behavioursSprites[0].RenderSprite();
    }
  }

  public void renderButtons() {
    for (int i = 0; i < mainCharacterList.length; i ++) {
      buttonsListLEFT[i].renderButton();
      buttonsListRIGHT[i].renderButton();
    }
  }
  public void detectAllButtons() {
    for (int i = 0; i < mainCharacterList.length; i ++) {
      if (mouseButton == LEFT) {
        char1id[i] = buttonsListLEFT[i].detectButton();
      } else if (mouseButton == RIGHT) {
        char2id[i] = buttonsListRIGHT[i].detectButton();
      }
    }
  }

  public void showSelectedId() {
    println("LEFT");
    for (int e : char1id) {
      print(e+" ");
    }
    println();
    println("RIGHT");
    for (int e : char2id) {
      print(e+" ");
    }
    println();
  }
}
