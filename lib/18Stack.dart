import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: myStack(),debugShowCheckedModeBanner: false,));
}

class myStack extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Container(color: Colors.deepPurpleAccent,height: 200,width: 200,),
            Positioned(child: Container(color: Colors.red),
            height: 50,width: 50,
            left: 30,top: 50,),
            Positioned(child: Container(color: Colors.lightGreenAccent,),
            height: 50,width: 50,
            left: 120,top: 50,),
            Positioned(child: Container(color: Colors.green,),
              height: 50,width: 50,
              left: 170,top: 150,)
          ],
        ),
      ),
    );
  }
  
}