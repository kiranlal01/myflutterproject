import 'package:flutter/material.dart';
import 'package:myflutterproject/DummyProducts/dummyData.dart';

class ProductDetails extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final id = ModalRoute.of(context)?.settings.arguments;
    final product = dummyProducts.firstWhere((prod) => prod["id"]==id);
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: 100, width: 200,
            child: Image(image: AssetImage(product["image"]),),
          ),
          Text(product["name"]),
          Text(product["description"]),
          Text(product["prize"]),
        ],
      ),
    );
  }

}