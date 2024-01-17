import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: listviewcustom(),));
}

class listviewcustom extends StatelessWidget{
  var name = ["car", "bike", "lorry", "jeep"];
  var phone = ["123456", "1234567", "9876654", "234567"];
  var image = [
    "Assests/Icons/joe.jpeg",
    "Assests/Icons/ross.jpeg",
    "Assests/Icons/chander.jpeg",
    "Assests/Icons/Frog.png"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.custom(childrenDelegate: SliverChildBuilderDelegate(
              (context,index){
            return Card(
              color: Colors.cyan,
              child: ListTile(
                leading: Image(image: AssetImage("${image[index]}"),),
                title: Text("${name[index]}"),
                subtitle: Text("${phone[index]}"),
                trailing: Icon(Icons.call),
              ),
            );
          },childCount:name.length
      )),
    );
  }

}