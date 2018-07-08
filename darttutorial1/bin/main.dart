enum NaturalNumbers { Zero,One,Two,Three }

void main ()
{
  //TASK #1 - Uncomment to run it
  //print ('Hello Dart');

 //TASK #2.1 - Uncomment to run it
  /*print ('testing integer functionality');
  int myInt = 4;
  myInt += 10;
  assert(myInt == 14);// Should not throw error

  print ('testing double functionality');
  double myDob = 4.2;
  myDob += 10.2;
  assert(myDob == 14.4);// Should not throw error 
  
  print ('integer and double test passed');*/

  //TASK #2.2 - Uncomment to run it
/*
  print(NaturalNumbers.Zero);
  assert(NaturalNumbers.Zero.index == 0);// Should not throw error
  print(NaturalNumbers.One);
  assert(NaturalNumbers.One.index == 1);// Should not throw error
  print(NaturalNumbers.Two);
  assert(NaturalNumbers.Two.index == 2);// Should not throw error
*/

 // Task #2.3 - uncomment to run it
  /*String name = "Dart Language";
  String usage = " Used in Mobile, Web and Virtual Machine";
  print(name+usage);

  // should not throw error
  assert(name+usage == 'Dart Language Used in Mobile, Web and Virtual Machine');

  //-- string interpolation
  var name1 = "${name} is next emerging language";
  print(name1);
  assert(name1 == 'Dart Language is next emerging language'); // should not throw error
  */

 // Task #3 - uncomment to run it
  /*bool DoYouLiveOnEarth = true;

  // Check for TRUE condition
  if(DoYouLiveOnEarth)
     print("Yes I live on Earth");

   print('Moved to Mars by tesla ');
   DoYouLiveOnEarth = false;

  // Check for FALSE condition
   if(DoYouLiveOnEarth == false)
     print("no Moved to Mars");

  NaturalNumbers naturalNumbers = NaturalNumbers.Two;
// Check for Switch condition, here we set naturalNumbers = NaturalNumbers.Two
  switch (naturalNumbers) {
    case NaturalNumbers.Zero:  print("you are using ${naturalNumbers}"); break;
    case NaturalNumbers.One:  print("you are using ${naturalNumbers}"); break;
    case NaturalNumbers.Two:  print("you are using ${naturalNumbers}"); break;
    case NaturalNumbers.Three:  print("you are using ${naturalNumbers}"); break;
    default: break;
  }*/

  // TASK 4 - uncomment to run it
  print("For loop");
  // print hello 3 times
  for(int i=0;i<3;i++){
    print("Hello ${i}");
  }

  // this also print hello 3 times
  print("WHILE loop");
  int i=0;
  bool breakCondition = false;
  while(breakCondition== false)
  {
    print("Hello ${i}");    
    // set breakCondition to TRUE, for completing the 
    // loop when value of i reached 3
    if(++i>=3) breakCondition = true;
  }   
  assert(false);

}