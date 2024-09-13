import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";

void main() {
  runApp(login());
}

class login extends StatefulWidget {
  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  var initalState = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          drawer: const Drawer(),
          appBar: AppBar(
            title: const Text("Dashboard"),
            centerTitle: true,
            backgroundColor: Colors.blue,
          ),
          body: ListView(
            children: [
              Container(
                  decoration: const BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20))),
                  height: 120.0,
                  child: const Padding(
                    padding: EdgeInsets.only(top: 20.0, left: 10.0),
                    child: ListTile(
                      title: Text("Vaibhav Satras"),
                    ),
                  )),
              Container(
                margin: const EdgeInsets.only(top: 50.0),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 10.0),
                      child: Text(
                        "Login Page",
                        style: TextStyle(
                            fontSize: 20.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      width: 30.0,
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: TextField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            hintText: "Email Address",
                            hintStyle: TextStyle(
                                color: Color.fromARGB(255, 139, 135, 135))),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            hintText: "Password",
                            hintStyle: TextStyle(
                                color: Color.fromARGB(255, 139, 135, 135))),
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.all(10),
                        child: CupertinoButton(
                          onPressed: () {},
                          color: Colors.blueAccent,
                          child: Text("Login"),
                        )),
                  ],
                ),
              )
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
              items: <BottomNavigationBarItem>[
                BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home)),
                BottomNavigationBarItem(
                    label: "About", icon: Icon(Icons.person)),
                BottomNavigationBarItem(
                    label: "Contact", icon: Icon(Icons.phone))
              ],
              currentIndex: initalState,
              elevation: 0,
              onTap: (setValue) => {
                    setState(() {
                      initalState = setValue;
                    })
                  }),
        ));
  }
}
