import 'package:flutter/material.dart';

import 'productDatas.dart';




class productdetails extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    final id =ModalRoute.of(context)?.settings.arguments;
    final product=dummyProducts.firstWhere((prodct) => prodct["id"]==id);
    return Scaffold(backgroundColor: Colors.grey,
        body: ListView(
          children: [
            SizedBox(
              height: 600,
              width: 600,
              child: Image(image: AssetImage(product["image"]),),
            ),
            Text(product["name"]),
            Text(product["description"]),
          ],

        ));
  }
}