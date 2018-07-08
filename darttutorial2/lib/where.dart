
listwhere(){
  //-- this list will contain 1,2,3,4,5,6,7,8
   List<int> listIntWhere= new List<int>.generate(8,(int index)=>index+1,growable: true);   
  // Task 4.1 indexOf, let find index of 6, it should be 5th, as list is zero based 
  print("Task 4.1 indexOf (listIntWhere) InitialVal= " + listIntWhere.join(","));
  print("Task 4.1 indexOf (listIntWhere)= " + listIntWhere.indexOf(6).toString());

 // Task 4.2 elementAt, let find element at 5th, it should be 6, as list is zero based 
  print("Task 4.2 elementAt (listIntWhere) InitialVal= " + listIntWhere.join(","));
  print("Task 4.2 elementAt (listIntWhere)= " + listIntWhere.elementAt(5).toString());

  // Task 4.3 lastIndexOf, let create new list with duplicate value
  // it will contain 0,1,2,0,1,2
  List<int> listDuplicate = new List.generate(6, (int x)=> x<3?x:x-3);
  print("Task 4.3 lastIndexOf (listDuplicate) InitialVal= " + listDuplicate.join(","));
  print("Task 4.3 lastIndexOf (listDuplicate)= " + listDuplicate.lastIndexOf(1).toString());

  // Task 4.4 any, let find does list contain item 2
  print("Task 4.4 any (listDuplicate) InitialVal= " + listDuplicate.join(","));
  print("Task 4.4 after any (listDuplicate)= " + listDuplicate.any((int item)=>item==2).toString());

  // Task 4.5 sublist, let create sublist from 3 to 6 item
  print("Task 4.5 sublist (listDuplicate) InitialVal= " + listDuplicate.join(","));
  print("Task 4.5 after sublist (listDuplicate)= " + listDuplicate.sublist(3,6).join(","));

  // Task 4.6 where, let find item divisible by 2
  print("Task 4.6 where (listDuplicate) InitialVal= " + listDuplicate.join(","));
  print("Task 4.6 after where (listDuplicate)= " + listDuplicate.where((int item)=> item%2==0).join(","));
}


listwhere2(){
  //-- this list will contain 1,2,3,4,5,6,7,8
  List<int> listIntWhere= new List<int>.generate(8,(int index)=>index+1,growable: true);    
  // Task 4.7 singleWhere, lets find single element in the list
  print("Task 4.7 singleWhere (listIntWhere) InitialVal= " + listIntWhere.join(","));
  print("Task 4.7 after singleWhere (listIntWhere)= " + listIntWhere.singleWhere((int item)=>item==2).toString());
  try{
       listIntWhere.singleWhere((int item)=>item==9);
  }
  catch(ex)
  {
    print("Task 4.7 after singleWhere (listIntWhere) (from catch) notFound = " + ex.toString());
  }

  // Task 4.8 firstWhere, advantage of firstWhere is that you can specify the default element 
  // in case element not found
  // create the list, it will contain 0,1,2,3,0,1,2,3
  List<int> listDuplicate = new List.generate(8, (int x)=> x<4?x:x-4);
  print("Task 4.8 firstWhere (listDuplicate) InitialVal= " + listDuplicate.join(","));
  print("Task 4.8 after firstWhere (listDuplicate)= " + listDuplicate.firstWhere((int item)=>item==2).toString());
  print("Task 4.8 after firstWhere (listDuplicate) notFound (return -1)= " + listDuplicate.firstWhere((int item)=>item==10,orElse: ()=>-1).toString());

  // Task 4.9 lastWhere, advantage of lastWhere is that you can specify the default element 
  // in case element not found  
  print("Task 4.9 lastWhere (listDuplicate) InitialVal= " + listDuplicate.join(","));
  print("Task 4.9 after lastWhere (listDuplicate)= " + listDuplicate.lastWhere((int item)=>item==2).toString());
  print("Task 4.9 after lastWhere (listDuplicate) notFound (return -1)= " + listDuplicate.lastWhere((int item)=>item==10,orElse: ()=>-1).toString());

  // Task 4.10 retainWhere, retain element in list whoes divisible by 2
  print("Task 4.10 retainWhere (listDuplicate) InitialVal= " + listDuplicate.join(","));
  listDuplicate.retainWhere((int x)=> x%2==0);
  print("Task 4.10 after retainWhere (listDuplicate) = " + listDuplicate.join(","));

  // Task 4.11 removeWhere, remove element in list whoes not divisible by 2
  print("Task 4.11 removeWhere (listIntWhere) InitialVal= " + listIntWhere.join(","));
  listIntWhere.removeWhere((int x)=> x%2!=0);
  print("Task 4.11 after removeWhere (listIntWhere) = " + listIntWhere.join(","));
  
}