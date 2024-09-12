import 'package:flutter/material.dart';

void main() {
  runApp(dashboard());
}

class dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My Dashboard",
      home: Scaffold(
        drawer: const Drawer(),
        appBar: AppBar(
          title: const Text(
            "Dashboard",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.blue,
          centerTitle: true,
          iconTheme: const IconThemeData(color: Colors.white),
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
              child: const ListTile(
                title: Text(
                  "Vaibhav Satras",
                  style: TextStyle(fontSize: 20.0),
                ),
                subtitle: Text(
                  "Welcome back",
                  style: TextStyle(fontSize: 15.0),
                ),
                textColor: Colors.white,
                trailing: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "data:image/jpeg;base64,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"),
                ),
              ),
            ),
            GridView.count(
              padding: const EdgeInsets.all(15.0),
              mainAxisSpacing: 20.0,
              crossAxisSpacing: 20.0,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              children: [
                Container(
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 5.0),
                            color: Color.fromARGB(255, 230, 228, 224),
                            spreadRadius: 2,
                            blurRadius: 5,
                          ),
                        ]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(20.0),
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 228, 216, 215),
                            borderRadius:
                                BorderRadius.all(Radius.circular(100)),
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromARGB(255, 230, 228, 224),
                                  spreadRadius: 2,
                                  blurRadius: 3)
                            ],
                          ),
                          child: const Icon(Icons.home),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 5.0),
                          child: const Text("Home"),
                        )
                      ],
                    )),
                Container(
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 5.0),
                            color: Color.fromARGB(255, 230, 228, 224),
                            spreadRadius: 2,
                            blurRadius: 5,
                          ),
                        ]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(20.0),
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 228, 216, 215),
                            borderRadius:
                                BorderRadius.all(Radius.circular(100)),
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromARGB(255, 230, 228, 224),
                                  spreadRadius: 2,
                                  blurRadius: 3)
                            ],
                          ),
                          child: const Icon(Icons.person),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 5.0),
                          child: const Text("About"),
                        )
                      ],
                    )),
                Container(
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 5.0),
                            color: Color.fromARGB(255, 230, 228, 224),
                            spreadRadius: 2,
                            blurRadius: 5,
                          ),
                        ]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(20.0),
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 228, 216, 215),
                            borderRadius:
                                BorderRadius.all(Radius.circular(100)),
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromARGB(255, 230, 228, 224),
                                  spreadRadius: 2,
                                  blurRadius: 3)
                            ],
                          ),
                          child: const Icon(Icons.phone),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 5.0),
                          child: const Text("Contact"),
                        )
                      ],
                    )),
                Container(
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 5.0),
                            color: Color.fromARGB(255, 230, 228, 224),
                            spreadRadius: 2,
                            blurRadius: 5,
                          ),
                        ]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(20.0),
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 228, 216, 215),
                            borderRadius:
                                BorderRadius.all(Radius.circular(100)),
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromARGB(255, 230, 228, 224),
                                  spreadRadius: 2,
                                  blurRadius: 3)
                            ],
                          ),
                          child: const Icon(Icons.work),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 5.0),
                          child: const Text("Services"),
                        )
                      ],
                    )),
                Container(
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 5.0),
                            color: Color.fromARGB(255, 230, 228, 224),
                            spreadRadius: 2,
                            blurRadius: 5,
                          ),
                        ]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(20.0),
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 228, 216, 215),
                            borderRadius:
                                BorderRadius.all(Radius.circular(100)),
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromARGB(255, 230, 228, 224),
                                  spreadRadius: 2,
                                  blurRadius: 3)
                            ],
                          ),
                          child: const Icon(Icons.info),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 5.0),
                          child: const Text("Products"),
                        )
                      ],
                    )),
                Container(
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 5.0),
                            color: Color.fromARGB(255, 230, 228, 224),
                            spreadRadius: 2,
                            blurRadius: 5,
                          ),
                        ]),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(20.0),
                          decoration: const BoxDecoration(
                              color: Color.fromARGB(255, 228, 216, 215),
                              boxShadow: [
                                BoxShadow(
                                    color: Color.fromARGB(255, 230, 228, 224),
                                    spreadRadius: 2,
                                    blurRadius: 3)
                              ],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(100))),
                          child: const Icon(Icons.email),
                        ),
                        Container(
                          margin: const EdgeInsets.only(top: 5.0),
                          child: const Text("Email"),
                        )
                      ],
                    ))
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
