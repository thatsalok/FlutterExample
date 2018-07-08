void listadd()
{
  //-- this list will contain 1,2,3,4,5
   List<int> listIntAdd = new List<int>.generate(5,(int index)=>index+1,growable: true);
   // this list will contain 10,11
   List<int> listIntAdd2 = new List<int>.generate(2,(int index)=>index+10,growable: true);
   // Task 3.1 add and addAll
    listIntAdd.add(6);
  // List.join (Task#3.8), join all element as string, I will talking more about in its separate section.
  print("After Task 3.1 add (listIntAdd)= " + listIntAdd.join(","));

  listIntAdd.addAll(listIntAdd2);
  print("After Task 3.1 addAll (listIntAdd) = " + listIntAdd.join(","));

  //Task 3.2, converting it to map, map is key value data structure, if you have C++ background, its similar to stl::map
  // otherwise if you from C# background its similar to Dictionary
  print("Task#3.2 asMap()");
  listIntAdd2.asMap().forEach((key,value){ print("key ${key} value is ${value}");});

  //Task 3.3 fillRange and getRange, here i have created list with 3 element, I would fill all with 5
  List<int> listIntfillRange = new List.generate(3,(int index)=>5,growable: true); 
  listIntfillRange.fillRange(0, 3, 5);
  print("After Task 3.3 fillRange (listIntfillRange) = " + listIntfillRange.join(","));
  // Now for checking getRange, we will get data from listIntAdd, we will get range starting
  // from 3rd element to 5th, so overall 2 element would be displayed
   print("After Task 3.3 getRange (listIntAdd) = " + listIntAdd.getRange(3,5).join(","));

  //Task 3.4 insert and insert all
  // I would insert element 7 at 2nd location
  listIntfillRange.insert(2,7);    
  print("After Task 3.4 insert (listIntfillRange) = " + listIntfillRange.join(","));
     
  listIntfillRange.insertAll(2, listIntAdd2);
  print("After Task 3.4 insertAll (listIntfillRange) with (listIntAdd2) = " + listIntfillRange.join(","));
}


void listadd2()
{
  //-- this list will contain 1,2,3,4,5
  List<int> listIntAdd = new List<int>.generate(5,(int index)=>index+1,growable: true);
  // this list will contain all zero
  List<int> listIntAdd2 = new List<int>.generate(5,(int index)=>0,growable: true);

  //Task3.5 setAll   
  print("Task 3.5 Before setAll (listIntAdd2) = " + listIntAdd2.join(","));
  listIntAdd2.setAll(0, listIntAdd);
  print("Task 3.5 After setAll (listIntAdd2) = " + listIntAdd2.join(","));
  
  //Task 3.6 take/takeWhile  
  print("Task 3.6 take (listIntAdd2) = " + listIntAdd2.take(3).join(","));
  // this will take element which is smaller than 4
  print("Task 3.6 takeWhile (smaller than 4) (listIntAdd2) = " + listIntAdd2.takeWhile((int item) => item <= 3 ).join(","));

  //Task 3.7 fold, here we will calculate sum of all element
  print("Task 3.7 fold (listIntAdd2) Initial Val= " + listIntAdd2.join(","));
  // here I used toString to convert resulting integer to string to be displayed with print
  print("Task 3.7 fold (listIntAdd2) = " + listIntAdd2.fold(0, (prev,element)=>prev+element).toString());

  //Task 3.9 remove,removeAt,removeLast
  print("Task 3.9 (listIntAdd2) Initial Val= " + listIntAdd2.join(","));
  //remove 5 from listIntAdd2
  listIntAdd2.remove(5);
  print("Task 3.9 remove (listIntAdd2) = " + listIntAdd2.join(","));

//remove from post 2 from listIntAdd2
  listIntAdd2.removeAt(2);
  print("Task 3.9 removeAt (listIntAdd2) = " + listIntAdd2.join(","));

  //removeLast  from listIntAdd2
  listIntAdd2.removeLast();
  print("Task 3.9 removeAt (listIntAdd2) = " + listIntAdd2.join(","));

  //Task 3.10 removeRange remove first two element from list
  print("Task 3.10 (listIntAdd) Initial Val= " + listIntAdd.join(","));
  listIntAdd.removeRange(0, 2);
  print("Task 3.10 removeAt (listIntAdd) = " + listIntAdd.join(","));

}