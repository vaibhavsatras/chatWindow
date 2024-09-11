// class My_Class {
//   void my_function(String str1) {
//     print(str1);
//   }
// }

// void main() {
//   var obj1 = My_Class();

//   obj1.my_function("Hello Vaibhav");
//   obj1.my_function("Good Morning");
// }

class Math {
  void addition(dynamic a, dynamic b) {
    late int sum = a + b;
    print("Addition of $a And $b is $sum");
  }

  void substraction(dynamic a, dynamic b) {
    late int sub = a - b;
    print("Substraction of $a And $b is $sub");
  }

  void multiplication(dynamic a, dynamic b) {
    late int mult = a * b;
    print("Multiplication of $a And $b is $mult");
  }

  void division(dynamic a, dynamic b) {
    late double div = a / b;
    print("Division of $a And $b is $div");
  }

  void module(dynamic a, dynamic b) {
    late int mod = a % b;
    print("Module of $a And $b is $mod");
  }

  void gretter(dynamic a, dynamic b) {
    if (a > b) {
      print("$a is gretter than $b");
    } else {
      print("$a is less than $b");
    }
  }
}

void main() {
  var object = Math();

  object.addition(10, 5);
  object.substraction(20, 10);
  object.multiplication(10, 10);
  object.division(100, 10);
  object.module(100, 10);
  object.gretter(10, 100);
}
