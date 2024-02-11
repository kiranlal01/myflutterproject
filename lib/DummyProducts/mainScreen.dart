
import 'package:flutter/material.dart';
import 'package:myflutterproject/DummyProducts/dummyData.dart';
import 'package:myflutterproject/DummyProducts/productDetails.dart';

void main(){
  runApp(MaterialApp(home: MainScreen(),debugShowCheckedModeBanner: false,
  routes: {
    'secondpage':(context)=> ProductDetails(),
  },
  ));
}

class MainScreen extends StatefulWidget{
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children:
          dummyProducts.map((product)=>GestureDetector(
            child: Container(
              child: Text("${product["name"]}"),
            ),
            onTap: ()=>getnote(context,product["id"]),
          )).toList(),

      ),
    );
  }

  getnote(BuildContext context, product) {
    Navigator.of(context).pushNamed('secondpage',arguments: product);
  }
}