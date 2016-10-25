class Expense{
  String name;
  String party;
  String constituency;
  float returned;
  float claimed;
  color c;
  float total=0;
//Get called when the object gets created from the class
//Constructors do not have a return type
  Expense(){
   name="";
   party="";
  }
//Parameterised Constructor 
//Gnerally its job is to assign
//starting values to the fields
  Expense( String line){
   /*this.name=name;//this is used to refer to the fields
   this.party=party;//it sdisambiguates the use of the variables names
   this.constituency=con;
   this.returned= 0;
   this.claimed=0;
   color(random(0,255),random(0,255),random(0,255));*/
   String[] parts = line.split("\t");
    name = parts[0];
    party = parts[1];
    constituency = parts[2];
    returned = Float.parseFloat(parts[3]);
    claimed = Float.parseFloat(parts[4]);
    total = claimed - returned;
    c = color(random(0, 255), random(0, 255), random(0, 255));
  }
  //Converts the object to a string so it can be printed
String toString(){
 return name+"\t"+party+"\t"+constituency+"\t"+returned+"\t"+claimed;
}
}