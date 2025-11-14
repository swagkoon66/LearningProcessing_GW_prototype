public class Unit { //<>// //<>//

  public String name = null;
  public int id = -1;
  public String[] behaviours = null;
  public Sprite[] behavioursSprites = null;
  public Dialogue[] dialoguesArray = null;
  public Dialogue[] tauntsArray = null;
  public int unitX = 0;
  public int unitY = 0;
  public int unitHP = -1;
  public int unitATK = -1;
  public int unitDEF = -1;

  //default Constructor
  //public Unit(String name, int id, int hp , int atk, int def, String[] behaviours) {
  //    this.name = name;
  //    this.id = id;
  //    this.unitHP = hp;
  //    this.unitATK = atk;
  //    this.unitDEF = def;
  //    this.behaviours = behaviours;
  //    this.behavioursSprites = loadbehavioursSprites();
  //    this.dialoguesArray = loadDialogueListFromJSON();
  //  }


  //Main Constructor
  public Unit(String name, int id, int hp, int atk, int def, String[] behaviours, Dialogue[] dialogues, Dialogue[] taunts) {
    this.name = name;
    this.id = id;
    this.unitHP = hp;
    this.unitATK = atk;
    this.unitDEF = def;
    this.behaviours = behaviours;
    this.behavioursSprites = loadbehavioursSprites();
    //this.dialoguesArray = loaddialogues();
    this.dialoguesArray = dialogues;
    this.tauntsArray = taunts;
  }

  //LOADERS

  public Sprite[] loadbehavioursSprites() {
    Sprite[] behavioursSprites = new Sprite[behaviours.length];
    for (int i = 0; i < behaviours.length; i ++) {
      behavioursSprites[i] = new Sprite(this.name, (this.name+"\\"+behaviours[i]), this.id, 8, this.unitX, this.unitY);
    }
    return behavioursSprites;
  }

  //public Dialogue[] loaddialogues(){
  //  return loadDialogueListFromJSON();
  //}

  //GETTERS

  public String getName() {
    return this.name;
  }
  public int getID() {
    return this.id;
  }

  //SETTERS
  public void setUnitX(int x) {
    this.unitX = x;
  }
  public void setUnitY(int y) {
    this.unitY = y;
  }

  public String displayBehaviours() {
    String all = new String();
    for (String e : this.behaviours) {
      all = all.concat(e+" ");
    }
    return all;
  }

  public String toString() {
    return "Name: "+this.getName()+" Id: "+this.getID()+" Behaviours: " + displayBehaviours();
  }
}
