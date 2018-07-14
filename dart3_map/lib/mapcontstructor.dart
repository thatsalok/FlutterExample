void mapconstructor()
{
  // Task 1.1 basic map creation
  Map<int,String> mapCityVisited = new Map<int,String>();
  // Seed some Initial values
  mapCityVisited.putIfAbsent(1,()=> "Delhi");
  mapCityVisited.putIfAbsent(2,()=> "London");
  mapCityVisited.putIfAbsent(3,()=> "Vancouver");
  print("Task 1.1 : map() -X-X-X-X-X-");
  mapCityVisited.forEach((int k,String v)=> print("key ($k) = $v "));
  
  // Task 1.2 Map.from
  Map<int,String> mapCityVisitedFrom = new Map.from(mapCityVisited);
  print("Task 1.2 : Map.from -X-X-X-X-X-");
  mapCityVisitedFrom.forEach((int k,String v)=> print("key ($k) = $v "));

 // Task 1.3 Map.fromEntries
 List<MapEntry<int,String>> lstMapEntries = new List<MapEntry<int,String>> ();
 lstMapEntries.add(new MapEntry<int,String>(1,"Richmond BC"));
 lstMapEntries.add(new MapEntry<int,String>(2,"Burnaby BC"));
 lstMapEntries.add(new MapEntry<int,String>(3,"Armstrong BC"));

  Map<int,String> mapCitiesInBritishColumbia = new Map.fromEntries(lstMapEntries);
  print("Task 1.3 : Map.fromEntries -X-X-X-X-X-");
  mapCitiesInBritishColumbia.forEach((int k,String v)=> print("key ($k) = $v "));

  // Task 1.4 Map.fromIterables
  //
  List<int> lstInts = new List<int>.generate(3, (int index){return index+1;});
  List<String> lstStrings = new List<String>.from(["Richmond BC","Burnaby BC","Armstrong BC"]);

  Map<int,String> mapCitiesInBritishColumbia2 = new Map.fromIterables(lstInts, lstStrings);
  print("Task 1.4 : Map.fromEntries -X-X-X-X-X-");
  mapCitiesInBritishColumbia2.forEach((int k,String v)=> print("key ($k) = $v "));

  // Task 1.5 Map.unmodifiable
  Map<int,String> mapCityVisitedFrom2 = new Map.unmodifiable(mapCityVisited);
   print("Task 1.5 : Map.unmodifiable -X-X-X-X-X-");
  try{    
    mapCityVisitedFrom2.putIfAbsent(4,()=>"Some New City");
  }
  catch(ex)
  {
     print("Unable to add new item in unmodifiable map : ${ex.toString()}");
  }
}