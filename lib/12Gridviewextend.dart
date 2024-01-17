import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Gridviewextend(),debugShowCheckedModeBanner: false,));
}

class Gridviewextend extends StatelessWidget{
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.extent(maxCrossAxisExtent: 120,
        children: List.generate(8, (index) {
          return Card(
            child: Column(
              children: [
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