import 'dart:io';

class CheckAge {
  void ageFunction() {
    stdout.write("Please Enter Your Age :");
    // int? age = int.tryParse(stdin.readLineSync()!);
    // int age = int.parse(stdin.readLineSync()!);

    // var result = age == 20 ? "Your Are Matured" : "Your age is Not Matched";

    // print(result.runtimeType);

    // String num1 = "300.5";

    // String str1 = num1.toString();
    // print(str1.runtimeType);

    // if (age! <= 18 && age >= 0) {
    //   print("Your Are Young Boy..");
    // } else if (age >= 18 && age <= 30) {
    //   print("Your Are Mature");
    // } else if (age >= 30 && age <= 60) {
    //   print("Your Middle age..");
    // } else {
    //   print("Please Enter Valid Age");
    // }
  }
}

void main() {
  var newAge = CheckAge();
  newAge.ageFunction();
}
