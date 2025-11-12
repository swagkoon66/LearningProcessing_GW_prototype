/*
FOR writing over the top functions to be used in "main"
 */
//////////////////////////////////////////////////////////////
public Unit[] loadCharacterListFromJSON () {
  JSONArray values = loadJSONArray("/Configs/CharacterList.json");
  Unit[] units = new Unit[values.size()];
  //println(values.size());
  for (int i = 0; i < values.size(); i ++) {
    JSONObject jsonObject  = values.getJSONObject(i);
    String name = jsonObject.getString("name");
    int id = jsonObject.getInt("id");
    int hp = jsonObject.getInt("HP");
    int atk = jsonObject.getInt("ATK");
    int def = jsonObject.getInt("DEF");
    JSONArray behavioursJSON = jsonObject.getJSONArray("behaviours");
    String[] behaviours = new String[behavioursJSON.size()];
    for (int j = 0; j < behavioursJSON.size(); j++) {
      behaviours[j] = behavioursJSON.getString(j);
    }
    //println(name + " " + id + " ");
    //for (String e : behaviour){
    //  print(e+", ");
    //}
    //println();
    units[i] = new Unit(name, id, hp, atk, def ,behaviours);
    //println(units[i]);
  }
  return units;
}
//////////////////////////////////////////////////////////////
public Dialogue[] loadDialogueListFromJSON () {
  JSONArray values = loadJSONArray("/Configs/DialogueList.json");
  Dialogue[] dialogues = new Dialogue[values.size()];
  for (int i = 0; i < values.size() ; i ++){
    
  }
  return null;
}
