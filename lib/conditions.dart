class Conditions {
  void gretterTahanequal(int a, int b) {
    if (a >= b) {
      print("$a is Gretter than Equal to $b");
    } else {
      print("$a is Less than to $b");
    }
  }

  void equal(int a, int b) {
    if (a != b) {
      print("$a is equal to $b");
    } else {
      print("$a is not equal to $b");
    }
  }
}

void main() {
  var object = Conditions();
  object.gretterTahanequal(20, 10);
  object.equal(20, 10);
}
