import 'package:flutter/material.dart';
import 'package:my_app/body_function.dart';

class my_function2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        backgroundColor: Colors.blue,
        elevation: 0,
        title: Center(
          child: Text("My_App"),
        ),
      ),
      body: body_function(),
      floatingActionButton: FloatingActionButton.small(
        onPressed: () {},
        child: Icon(Icons.arrow_upward),
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home)),
        BottomNavigationBarItem(
            label: "Contact", icon: Icon(Icons.contact_emergency)),
        BottomNavigationBarItem(
            label: "About", icon: Icon(Icons.access_alarm_rounded))
      ]),
    );
  }
}
