import "package:flutter/material.dart";

void main() {
  runApp(new_practice());
}

class new_practice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "My App",
        home: Scaffold(
            drawer: Drawer(
                width: 200.0,
                backgroundColor: Colors.greenAccent,
                child: ListView(children: const [
                  DrawerHeader(
                    child: Center(
                      child: Text(
                        "Hello Vaibhav",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.black,
                    ),
                  ),
                  ListTile(
                    title: Text(
                      "Home",
                      textAlign: TextAlign.end,
                    ),
                  ),
                  ListTile(
                    title: Text(
                      "About",
                      textAlign: TextAlign.end,
                    ),
                  ),
                  ListTile(
                    title: Text(
                      "Contact",
                      textAlign: TextAlign.end,
                    ),
                  )
                ])),
            appBar: AppBar(
              title: const Text("My _App"),
              centerTitle: true,
              backgroundColor: Colors.purple,
              actions: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.message,
                      color: Colors.white,
                    )),
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.person,
                      color: Colors.white,
                    ))
              ],
            )));
  }
}
