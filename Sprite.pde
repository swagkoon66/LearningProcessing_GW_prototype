public class Sprite {
  /*
  TO DO
   ADD
   x
   y
   VARIABLE & CONSTRUCTOR & CHAGE HARD-CODED Sprite Render POS
   */
  String charName = null;
  String dataPath = null;
  int id = -1;
  int size = 0;
  PImage[] Sprites = null;
  int index = 0;
  public Sprite () {
    //EMPTY
  }

  public Sprite (String n, String path, int id, int size) {
    this.charName = n;
    this.dataPath = path;
    this.id = id;
    this.size = size;
    this.Sprites = LoadSprites(ReadSpritePath(ParseDataPath(this.dataPath)), this.size);
  }

  public String[] ParseDataPath(String Fullpath) {
    String[] splittedDataPath = split(Fullpath, "\\");
    return splittedDataPath;
  }
  //DESIGNED AS 2 FOLDER SYSTEM (CharacterName/TheirBehaviour/CharacterName_TheirBehaviour_INDEX)
  public String ReadSpritePath(String[] splittedDataPath) {
    return new String (splittedDataPath[0]+"/"+splittedDataPath[1]
      +"/"+splittedDataPath[0]+"_"
      +splittedDataPath[1]+"_");
  }
  public PImage LoadSingleSprite(String path) {
    PImage tempP;
    tempP = loadImage(path);
    return tempP;
  }
  public PImage[] LoadSprites(String path, int Size) {
    println("RUBBED2");
    PImage tempPs[] = new PImage[Size];
    for (int i = 0; i < Size; i ++) {
      tempPs[i] = LoadSingleSprite("/data/"+path+(i+1)+".png");
    }
    return tempPs;
  }

  public void RenderSprite() {
    println(this.index + 1);
    image(this.Sprites[index], 0, 0, this.Sprites[index].width * SCALE, this.Sprites[index].height * SCALE );
    this.index += 1;
    if (this.index > this.size - 1) {
      this.index = 0;
    }
  }
}
