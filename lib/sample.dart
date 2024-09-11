import "package:flutter/material.dart";

void main() {
  runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "This Is My First App",
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: Text("Menu Bar"),
          ),
          body: Material(
            child: Container(
                color: Colors.yellow,
                padding: EdgeInsets.all(0),
                margin: EdgeInsets.only(left: 500.0, top: 150.0),
                width: double.tryParse('200.0'),
                height: double.tryParse('100.0'),
                child: Container(
                    padding: EdgeInsets.all(25.0),
                    decoration: BoxDecoration(border: Border.all(width: 1)),
                    child: Center(
                      child: Text("Hello Vaibhav",
                          style: TextStyle(
                              fontSize: 20.0, fontWeight: FontWeight.bold)),
                    ))),
          ))));
}
