import "package:flutter/material.dart";
import "package:my_app/my_function.dart";

void main() {
  runApp(my_function());
}

class my_function extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: my_function2(),
    );
  }
}
