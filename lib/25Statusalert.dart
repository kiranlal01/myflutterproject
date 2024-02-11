import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: alert(),
    debugShowCheckedModeBanner: false,));
}

class alert extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(onPressed: () {
          showDialog(context: context, builder: (context){
            return AlertDialog(
              title: Text("exit"),
              content: Text("do you want to exit"),
              actions: [
                TextButton(onPressed: (){
                  Navigator.of(context).pop();
                }, child: Text("yes")),
                TextButton(onPressed: (){
                  Navigator.of(context).pop();
                }, child:Text("no")),
                TextButton(onPressed: (){}, child:Text("cancel"))
              ],
            );
          });
        }, child: Text("alert"),),

      ),
    );
  }

}