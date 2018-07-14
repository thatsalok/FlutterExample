void mapmethods(){
  
  Map<int,String> mapCityVisited = new Map<int,String>();
  // Seed some Initial values
  mapCityVisited.putIfAbsent(1,()=> "Delhi");
  mapCityVisited.putIfAbsent(2,()=> "London");
  mapCityVisited.putIfAbsent(3,()=> "Vancouver");

  // Task 3.1 addAll - fill the map using addAll
  Map<int,String> mapCityVisited2 = new Map<int,String>();
  mapCityVisited2.addAll(mapCityVisited);
   print("Task 3.1 : addAll() -X-X-X-X-X-");
  mapCityVisited2.forEach((int k,String v)=> print("key ($k) = $v "));

  // Task 3.2 addEntries - fill the map using iterable MapEntry
  List<MapEntry<int,String>> lstMapEntries = new List<MapEntry<int,String>> ();
  lstMapEntries.add(new MapEntry<int,String>(4,"Richmond BC"));
  lstMapEntries.add(new MapEntry<int,String>(5,"Burnaby BC"));
  lstMapEntries.add(new MapEntry<int,String>(6,"Armstrong BC"));  
  ///
  print("Task 3.2,3.3 : addEntries(),clear() -X-X-X-X-X-");
  //Task 3.2 : Clear will remove all the items from map
  mapCityVisited2.clear();
  mapCityVisited2.addEntries(lstMapEntries);   
  mapCityVisited2.forEach((int k,String v)=> print("key ($k) = $v "));

 // Task 3.4 remove : remove the item based on the key
  print("Task 3.4 : remove -X-X-X-X-X-");
  print("removing key = 4 ");
  mapCityVisited2.remove(4);
  mapCityVisited2.forEach((int k,String v)=> print("key ($k) = $v "));

 // Task 3.5 removeWhere : remove the item based on predicate or condition
  print("Task 3.5 : removeWhere -X-X-X-X-X-");
  mapCityVisited2.addAll(mapCityVisited);
  print("Length of mapCityVisited2 is ${mapCityVisited2.length}, we will now remove all even keys");
  mapCityVisited2.removeWhere((int key,String val){ 
    return key%2==0;
  });
  mapCityVisited2.forEach((int k,String v)=> print("key ($k) = $v "));
}