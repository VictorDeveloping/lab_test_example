Expense expense;
Expense exp1;
ArrayList<Expense> expenses_array = new ArrayList<Expense>();
ArrayList <PartyExpense> partyExpenses_array = new ArrayList<PartyExpense>();
void setup() {
  size(500, 500);
  //exp= new Expense();
  //exp1= new Expense("Bryan","Independent","Dublin central",0,0);
  //println(exp1);
  //expenses.add(exp);
  //expenses.add(exp1);
  loadExpenses();
  for (int i =0; i < expenses_array.size(); i++) {
    Expense e = expenses_array.get(i);
    println(e);
  }
  println("******************************************************************");
  for (int i =0; i < partyExpenses_array.size(); i++) {
    PartyExpense b = partyExpenses_array.get(i);
    println(b);
  }
  /*for(Expense e:expenses_array){
   println(e);
   }*/
  //Exam question: Explain the following piece of code:
  /*exp.name="Derek";
   exp1.name="Bryan";
   exp = exp1;
   exp1.name="Json";
   */
}

void loadExpenses()
{
  String lines [] = loadStrings("data/expenses.txt");
  for (int i = 0; i < lines.length; i ++)
  {
    expense = new Expense(lines[i]);
    expenses_array.add(expense);
    PartyExpense partyExpense= null;
     
     boolean found=false;
    for (int j=0; j< partyExpenses_array.size(); j++) {
     
      if (expense.party.equals(partyExpenses_array.get(j).name)) {
        found=true;
        partyExpense= partyExpenses_array.get(j);
      }
    }
    if(found==false){
      partyExpense = new PartyExpense(expense.party);
      partyExpenses_array.add(partyExpense);
    }
  partyExpense.total += expense.total;
  }
}


void drawExpenseBars()
{
  float barWidth = width / expenses_array.size();
  float maxValue = Float.MIN_VALUE;
  float scaleFactor = height / maxValue;
  for(int i = 0; i < expenses_array.size(); i++)
  {
    Expense expense = expenses_array.get(i);
    maxValue= expenses_array.get(i).total;
    stroke(expense.c);
    fill(expense.c);
    float x = i * barWidth;
  
    rect(x, height, barWidth, - expense.total * scaleFactor);
  }
}
void draw() {
  drawExpenseBars();
}