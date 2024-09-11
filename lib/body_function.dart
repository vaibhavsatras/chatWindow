import 'package:flutter/material.dart';

class body_function extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 233, 242, 247),
      padding: EdgeInsets.all(50.0),
      child: Center(
          child: Table(
        border: TableBorder.all(),
        children: [
          TableRow(
            children: [
              Column(children: [Text("Sr.No.")]),
              Column(children: [Text("Name")]),
              Column(children: [Text("Address")])
            ],
          ),
          TableRow(
            children: [
              Column(children: [Text("1001")]),
              Column(children: [
                Text(
                  "Vaibhav Satras",
                  textAlign: TextAlign.center,
                )
              ]),
              Column(children: [Text("Chikhali")])
            ],
          ),
        ],
      )),
    );
  }
}
