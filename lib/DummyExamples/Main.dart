import 'package:flutter/material.dart';

import 'Details.dart';
import 'Splash.dart';
import 'productDatas.dart';
void main(){
  runApp(MaterialApp(home: splash(),debugShowCheckedModeBanner: false,
    routes: {
      'nextpage':(context)=> productdetails(),
    },
  ));
}

class MainPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          children:
          dummyProducts.map((product)=>GestureDetector(
            child: Container(
              child: Text("${product["name"]}"),
            ),
            onTap: ()=>getnote(context,product["id"]),
          )).toList(),

        ),
      ),
    );
  }

  getnote(BuildContext context, product) {
    Navigator.of(context).pushNamed('nextpage',arguments: product);
  }
}