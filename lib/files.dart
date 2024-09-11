void main() {
  //List Methods

  // var list = [10, 20, 30, 40, "Vaibhav", "Ram"];
  // print(list.isNotEmpty);
  // print(list.isEmpty);
  // print(list.length);
  // print(list.indexOf(30));
  // print(list.first);
  // print(list.last);

  //, list.addAll([45, 55]);

  // list.addAll(["Avinash"]);
  // list.insert(3, 100);
  // list.insertAll(3, ["Anil", "Amar"]);
  // list.replaceRange(4, 5, ["Avinash"]);

  // list[0] = 50;

  // print(list);

  var myMap = {
    "Name": "Vaibhav",
    "age": 26,
    "Address": "Chikhali",
  };

  print(myMap);
  // print(myMap["Name"]);

  // print(myMap.isEmpty);
  // print(myMap.length);
  // print(myMap.isNotEmpty);
  // print(myMap.keys);
  // print(myMap.values);
  // print(myMap.entries);
  // print(myMap.hashCode);
  // print(myMap.runtimeType);
  // print(myMap.remove("Name"));

  myMap.addAll({"date": "25 Aug"});

  print(myMap);
}
