import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: backpress(),
    debugShowCheckedModeBanner: false,));
}
class backpress extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    Future<bool>showdailogpop() async{
      return await showDialog(context: context, builder:(context){
        return AlertDialog(
          title: Text("exit"),
          content: Text("do you want "),
          actions: [
            TextButton(onPressed: (){
              Navigator.of(context).pop(false);
            }, child:Text("yes")),
            TextButton(onPressed: (){
              Navigator.of(context).pop(true);
            }, child:Text("no"))
          ],

        );
      });
    }
    return WillPopScope(onWillPop: showdailogpop,
      child: Scaffold(
          body: Center(
            child: Text("backpress"),
          ),
          ),);
  }

}