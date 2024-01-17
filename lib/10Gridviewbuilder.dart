import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: gridbuilder(),));
}

class gridbuilder extends StatelessWidget{
  var icons=[Icons.people,Icons.add_a_photo];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: GridView.builder(gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 130),
        itemBuilder: (context,index){
          return Container(
            child: Icon(icons[index]),
          );
        },itemCount: icons.length,),
    );
  }

}