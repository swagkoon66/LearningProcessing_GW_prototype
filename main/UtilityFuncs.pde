public class UtilityFuncs{
  // lol
}

public static void HelloWorld(){
  println("Hello World");
}

public String[] ParseDataPath(String Fullpath){
  String[] splittedDataPath = split(Fullpath,"\\");
  return splittedDataPath;
}
//DESIGNED AS 2 FOLDER SYSTEM (CharacterName/TheirBehaviour/CharacterName_TheirBehaviour_INDEX)
public String ReadSpritePath(String[] splittedDataPath){
  return new String (splittedDataPath[0]+"/"+splittedDataPath[1]
  +"/"+splittedDataPath[0]+"_"
  +splittedDataPath[1]+"_");
}
public PImage LoadSingleSprite(String path){
  PImage tempP;
  tempP = loadImage(path);
  return tempP;
}
public PImage[] LoadSprites(String path,int Size){
  PImage tempPs[] = new PImage[Size];
  for (int i = 0 ; i < Size ; i ++){
    tempPs[i] = LoadSingleSprite("/data/"+path+(i+1)+".png");
  }
  return tempPs;
}
