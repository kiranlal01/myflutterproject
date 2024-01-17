import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: gridview(),debugShowCheckedModeBanner: false,));
}

class gridview extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,mainAxisSpacing: 20,crossAxisSpacing: 20),
        children: [
          Container(child: Icon(Icons.construction),color: Colors.cyan,),
          Container(child: Icon(Icons.access_time),color: Colors.red,),
          Container(child: Icon(Icons.account_balance),color: Colors.yellowAccent,),
          Container(child: Icon(Icons.ac_unit),color: Colors.deepPurpleAccent,),
          Container(child: Icon(Icons.accessibility),color: Colors.green,),
          Container(child: Icon(Icons.account_box),color: Colors.pink,),
          Container(child: Icon(Icons.add_a_photo),color: Colors.blue,),
          Container(child: Icon(Icons.account_balance),color: Colors.deepOrangeAccent,),
          Container(child: Icon(Icons.account_balance),color: Colors.greenAccent,),
          Container(child: Icon(Icons.account_balance),color: Colors.indigo,),
        ],
      ),
    );
  }

}