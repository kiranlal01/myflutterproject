import 'package:flutter/material.dart';

class AddItem extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(color: Colors.white,
        child: Column(
          children: [
            SizedBox(height: 20,),
            TextField(
              decoration: InputDecoration(
                labelText: 'name',
                border: OutlineInputBorder()
              ),
            ),
            SizedBox(height: 20,),
            TextField(
              decoration: InputDecoration(
                labelText: 'prize',
                border: OutlineInputBorder()
              ),
            ),
            SizedBox(height: 20,),
            TextField(
              decoration: InputDecoration(
                labelText: 'description',
                border: OutlineInputBorder()
              ),
            ),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: () {

            }, child: Text("Add"))
          ],
        ),
      ),
    );
  }

}