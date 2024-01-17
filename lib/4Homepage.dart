import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
      home: Homepage(),
      useInheritedMediaQuery: true,
      debugShowCheckedModeBanner: false));
}

class Homepage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [                                               //list
        Card(color: Colors.blue,
          child: ListTile(
            leading: Image(image: AssetImage("assets/icon/minion.png"),),
            title: Text("Ace"),
            subtitle: Text("7568465940"),
            trailing: Icon(Icons.call),
          ),
        ),
        Card(color: Colors.yellow,
          child: ListTile(
            leading: CircleAvatar(backgroundImage: AssetImage("assets/icon/pig.png"),),
            title: Text("King"),
            subtitle: Text("6473893783"),
            trailing: Icon(Icons.call),
          ),
        ),
        Card(color: Colors.red,
          child: ListTile(
            leading: CircleAvatar(backgroundImage: AssetImage("assets/icon/frog.png"),),
            title: Text("Jack"),
            subtitle: Text("7865375397"),
            trailing: Icon(Icons.call),
          ),
        ),
        Card(color: Colors.green,
          child: ListTile(
            leading: CircleAvatar(backgroundImage: AssetImage("assets/icon/gecko.png"),),
            title: Text("Queen"),
            subtitle: Text("3865396573"),
            trailing: Icon(Icons.call),
          ),
        ),
        Card(color: Colors.deepPurple,
          child: ListTile(
            leading: CircleAvatar(backgroundImage: AssetImage("assets/icon/lizard.png"),),
            title: Text("Prince"),
            subtitle: Text("5087435676"),
            trailing: Icon(Icons.call),
          ),
        ),
        Card(color: Colors.pink,
          child: ListTile(
            leading: CircleAvatar(backgroundImage: AssetImage("assets/icon/monkey.png"),),
            title: Text("Roger"),
            subtitle: Text("2456809865"),
            trailing: Icon(Icons.call),
          ),
        ),
        Card(color: Colors.yellowAccent,
          child: ListTile(
            leading: CircleAvatar(backgroundImage: AssetImage("assets/icon/panda.png"),),
            title: Text("Jade"),
            subtitle: Text("5087659834"),
            trailing: Icon(Icons.call),
          ),
        ),
      ],),
    );
  }

}