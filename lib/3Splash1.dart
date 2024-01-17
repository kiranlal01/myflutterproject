import 'dart:async';

import 'package:flutter/material.dart';

import '3Homescreen.dart';


void main() {
  runApp(MaterialApp(home: Splash()));
}

class Splash extends StatefulWidget {
  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds:5),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder:(context)=>Home()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "MyApp",
        ),
        backgroundColor: Colors.blue,
      ),
      body: Center(
          child: Container(
            // color: Colors.black,
              decoration: BoxDecoration(image:DecorationImage(image: NetworkImage("https://img.freepik.com/free-photo/painting-mountain-lake-with-mountain-background_188544-9126.jpg"))),
              child: Column(
                children: [
                  Image(
                    image: AssetImage("assets/icon/pig.png"),
                  ),
                  Text("Welcome", style: TextStyle(color: Colors.white)),
                ],
              ))),
    );
  }
}