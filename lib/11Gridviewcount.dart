import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
void main(){
  runApp(MaterialApp(home: Gridviewcount(),debugShowCheckedModeBanner: false,));
}

class Gridviewcount extends StatelessWidget{
  var icons = [
    Icons.home,
    Icons.email,
    Icons.alarm,
    Icons.wallet,
    Icons.backup,
    Icons.book,
    Icons.camera,
    Icons.person,
    Icons.print,
    Icons.phone,
    Icons.notes,
    Icons.music_note
  ];
  var name = [
    "Home",
    "Email",
    "Alarm",
    "Wallet",
    "Backup",
    "Book",
    "Camera",
    "Person",
    "Print",
    "Phone",
    "Notes",
    "Music"
  ];
  var colors = [
    Colors.green,
    Colors.grey,
    Colors.brown,
    Colors.red,
    Colors.yellowAccent,
    Colors.lightGreen,
    Colors.purple,
    Colors.deepOrangeAccent,
    Colors.greenAccent,
    Colors.pinkAccent,
    Colors.blueGrey,
    Colors.deepPurpleAccent
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(crossAxisCount: 2,
        children: List.generate(8, (index) {
          return Card(color: colors[index],
            child: Column(
              children: [
                SizedBox(height: 100,),

                Icon(icons[index]),
                Text("${name[index]}")
              ],
            ),
          );
        }),
      ),
    );
  }

}