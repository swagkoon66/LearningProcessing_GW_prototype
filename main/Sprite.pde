public class Sprite{
  String charName = null; 
  String dataPath = null;
  int id = 0;
  int size = 0;
  PImage[] Sprites = null;
  int index = 0;
  public Sprite (String n, String path, int id, int size){
    this.charName = n;
    this.dataPath = path;
    this.id = id;
    this.size = size;
    this.Sprites = LoadSprites(ReadSpritePath(ParseDataPath(this.dataPath)), this.size);
  }
  public void RenderSprite(){
      println(this.index + 1);
      image(this.Sprites[index],0,0,this.Sprites[index].width * SCALE,this.Sprites[index].height * SCALE );
      this.index += 1;
      if (this.index > this.size - 1){
        this.index = 0;
      }
      
      
  }
}
