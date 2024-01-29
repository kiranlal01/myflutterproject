import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: dismissable(),));
}

class dismissable extends StatelessWidget{
  var datas = ["Data 1","Data 2","Data3"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemBuilder: (context,index){

        return Dismissible(
            key: ValueKey(datas),
            child: ListTile(
              title: Center(child: Text(datas[index])),
            ),
          background: Container(color: Colors.deepPurple,),
          secondaryBackground: Container(color: Colors.green,),
        );

      },itemCount: datas.length,),
    );
  }

}