import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: gridviewex(),));
}

class gridviewex extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,),
        children: [
          Container(child: Column(
            children: [
              // Icon(Icons.construction),
              Image(image: AssetImage("assets/icon/house.png"),),
              Text("House")
            ],
          ),),
          Container(child: Column(
            children: [
              // Icon(Icons.construction),
              Image(image: AssetImage("assets/icon/person.png"),),
              Text("User")
            ],
          ),),
          Container(child: Column(
            children: [
              // Icon(Icons.construction),
              Image(image: AssetImage("assets/icon/house.png"),),
              Text("Home")
            ],
          ),),
          Container(child: Column(
            children: [
              // Icon(Icons.construction),
              Image(image: AssetImage("assets/icon/person.png"),),
              Text("")
            ],
          ),),
        ],

      ),
    );
  }

}