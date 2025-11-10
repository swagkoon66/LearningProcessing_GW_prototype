public class Unit {
  /*
  TO DO
   ADD
   x
   y
   */
  public String name = null;
  public int id = -1;
  public String[] behaviours = null;
  public Sprite[] behavioursSprites = null;
  public Dialog[] dialogsArray = null;

  public Unit(String n, int id, String[] behaviours) {
    this.name = n;
    this.id = id;
    this.behaviours = behaviours;
    this.behavioursSprites = loadbehavioursSprites(); //<>//
    this.dialogsArray = null;
  }

  public Sprite[] loadbehavioursSprites() {
    println("RUBBED1");
    Sprite[] behavioursSprites = new Sprite[behaviours.length];
    for (int i = 0; i < behaviours.length; i ++) {
      behavioursSprites[i] = new Sprite(this.name, (this.name+"\\"+behaviours[i]), this.id, 12);
    }
    return behavioursSprites;
  }



  public String getName() {
    return this.name;
  }
  public int getID() {
    return this.id;
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
