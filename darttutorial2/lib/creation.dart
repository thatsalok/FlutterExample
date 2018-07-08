
void creation()
{
  // 1.0 Basic List
  List<int> listOfInt = new List<int>();

  // 1.1 with Length
  List<int> listOfIntWithLength = new List<int>(5);

  //1.2 Using List.filled when list is fixed length
  List<int> listofIntFilledFixed = new List<int>.filled(5, 1);

  try{
    //this will thow error
    listofIntFilledFixed.add(5);
  }
  catch(ex)
  {
    print(ex);
  }

  // 1.2(a) using List.filled, now list is growable
  List<int> listofIntFilledGrowable = new List<int>.filled(5, 1,growable:true);
  listofIntFilledGrowable.add(5);

  // 1.3 using List.generate, you can specify your own function to provide value to list
  // => is way to write shorthand function, the list would contain 1,2,3,4,5 
  // as list in dart is zero index based
  List<int> listofIntGenerate = new List<int>.generate(5,(int index)=> index+1);

  //1.5 Using List.from, it will also have 1,2,3,4,5
  List<int> listOfIntFrom = new List<int>.from(listofIntGenerate);

  // 1.4 Using List.unmodifiable list with created list
  List<int> listOfIntunmodifiable = new List<int>.unmodifiable(listofIntGenerate);

  try{
    //this will thow error
    listOfIntunmodifiable.add(5);
  }
  catch(ex)
  {
    print(ex);
  }

  //1.6 Using List.copyRange, you need to specify length of target before hand
  List<int> listOfIntWithcopyRange = new List<int>(3);
  List.copyRange(listOfIntWithcopyRange, 0, listOfIntunmodifiable,0,3);

}