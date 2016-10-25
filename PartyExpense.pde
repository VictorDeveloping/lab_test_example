class PartyExpense
{
  String name;
  float total;
  color colour;
  
  PartyExpense(String name)
  {
    this.name = name;
    total = 0.0f;
    println("New party " + name);
    colour = color(random(0, 255), random(0, 255), random(0, 255));
  }
    //Converts the object to a string so it can be printed
    String toString(){
     return name+"\t"+total;
    }
}