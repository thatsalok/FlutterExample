void properties()
{
  // Create List with prefillined items : 1,2,3,4,5
  List<int> listIntProperties = new List.generate(5,(int index)=>index+1,growable: true);

// Demonstrate use of first,last and length property
  print("First : ${listIntProperties.first}, Last : ${listIntProperties.last} and number of elements are ${listIntProperties.length}");

  //-- Print list in reverse
  listIntProperties.reversed.forEach((int item){ print('item ${item}');});

  print("isEmpty : ${listIntProperties.isEmpty}, isNotEmpty : ${listIntProperties.isNotEmpty} and ObjectTyp ${listIntProperties.runtimeType}");

}