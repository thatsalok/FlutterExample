void mapproperties()
{
    
  Map<int,String> mapCityVisited = new Map<int,String>();
  // Seed some Initial values
  mapCityVisited.putIfAbsent(1,()=> "Delhi");
  mapCityVisited.putIfAbsent(2,()=> "London");
  mapCityVisited.putIfAbsent(3,()=> "Vancouver");

  // Task 2.1 enteries 
  print("Task 2.1 : entries -X-X-X-X-X-");
  mapCityVisited.entries.forEach((MapEntry<int,String> mapItem)=> print("key (${mapItem.key}) = ${mapItem.value} "));

 // Task 2.2,2.3,2.4 isEmpty, isNotEmpty, length
  print("Task 2.2,2.3,2.4: isEmpty, isNotEmpty, length -X-X-X-X-X-");
  print("IsEmpty : ${mapCityVisited.isEmpty} , isNotEmpty : ${mapCityVisited.isNotEmpty}, length : ${mapCityVisited.length} ");

  // Task 2.5,2.6 keys,values   
  print("Task 2.5,2.6 keys,values -X-X-X-X-X-");
  print("All Keys :  " +  mapCityVisited.keys.join(","));
  print("All Valuess :  " +  mapCityVisited.values.join(","));

}
