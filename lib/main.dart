import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'fluTter Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const LeticiaHomePage(),
    );
  }
}

class LeticiaHomePage extends StatelessWidget {
  const LeticiaHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Leticia's Application"),
        actions: const [Icon(Icons.search_off_rounded), Icon(Icons.more_vert)],
      ),
      body: ListView(
        children: [
          ListTile(
            leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage("assets/images/profile.jpg")),
            title: Text("Leticia"),
            subtitle: Row(
              children: const [
                Icon(Icons.done_all),
                SizedBox(
                  width: 10,
                ),
                Text("Hi how are you doing")
              ],
            ),
            trailing: Column(
              children: [Text("3:45"), Icon(Icons.notifications)],
            ),
          ),
          ListTile(
            leading: CircleAvatar(
                radius: 30, backgroundImage: AssetImage("images/profile.jpg")),
            title: Text("Leticia"),
            subtitle: Row(
              children: const [
                Icon(Icons.done_all),
                SizedBox(
                  width: 10,
                ),
                Text("Hi how are you doing")
              ],
            ),
            trailing: Column(
              children: [Text("3:45"), Icon(Icons.notifications)],
            ),
          )
        ],
      ),
      drawer: Drawer(
          child: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.home),
            title: Text("data"),
          )
        ],
      )),
    );
  }
}
