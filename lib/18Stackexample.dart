import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: stackex(),debugShowCheckedModeBanner: false,));
}

class stackex extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(color: Colors.cyan,height: double.infinity,width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(top: 250,left: 225),
            child: ListView(
              children: [
                Text("Alexa",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.black),),
                Text("Welcome")
              ],
            ),
          ),),
          Positioned(child: ClipRRect(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(20),bottomRight: Radius.circular(20)),
              child: Container(
                color: Colors.purple,)), 
            height: 150,width: 500,),
          Positioned(child: ClipRRect(borderRadius: BorderRadius.circular(30),
              child: Container(
                child: Image(image: AssetImage("assets/images/profile.png",),fit: BoxFit.fill,),
                color: Colors.blueGrey,)), 
            height: 150,width: 150, 
            left: 180,top: 80,)
        ],
      ),
    );
  }

}