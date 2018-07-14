void mapfindandreplace(){

  Map<int,String> mapCityVisited = new Map<int,String>();
  // Seed some Initial values
  mapCityVisited.putIfAbsent(1,()=> "Delhi");
  mapCityVisited.putIfAbsent(2,()=> "London");
  mapCityVisited.putIfAbsent(3,()=> "Vancouver");

  //- Task 4.1 containKey
  print("Task 4.1 : Does map contain key (1) : ${mapCityVisited.containsKey(1)}");
  print("Task 4.1 : Does map contain key (4) : ${mapCityVisited.containsKey(4)}");

  //- Task 4.2 containsValue
  print("Task 4.2 : Does map contain value (Vancouver) : ${mapCityVisited.containsValue('Vancouver')}");
  print("Task 4.2 : Does map contain value (Toronto) : ${mapCityVisited.containsValue('Toronto')}");

 //- Task 4.3 map - convert one map to different type map 
 //- Here we convert map<int,string> to map<string,int> using map function
 var mapCityVisited2 = mapCityVisited.map<String,int>((int key,String val)=>new MapEntry(val, key));
  print("Task 4.3 : map() -X-X-X-X-X-");
  mapCityVisited2.forEach((String k,int v)=> print("key ($k) = $v "));

  //- Task 4.4 update, let update key 2 from London to berlin
  // one good thing about update function is that, its has option to 
  // insert new item in case said key not present
  mapCityVisited.update(2, (String val)=>"Berlin");
  mapCityVisited.update(4,null ,ifAbsent: ()=>"London");
  print("Task 4.4 : update() -X-X-X-X-X-");
  mapCityVisited.forEach((int k,String v)=> print("key ($k) = $v "));

  //- Task 4.5 updateAll,I will concatenate value with key 
  mapCityVisited.updateAll((int k,String v){  return  "$v $k";  });
  print("Task 4.5 : updateAll() -X-X-X-X-X-");
  mapCityVisited.forEach((int k,String v)=> print("key ($k) = $v "));

}