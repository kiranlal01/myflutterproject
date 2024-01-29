import 'package:flutter/material.dart';

class listView extends StatelessWidget{
  var colors=[Colors.green,Colors.orange,Colors.blueAccent,Colors.purple,Colors.deepPurpleAccent,Colors.orange,Colors.red,Colors.green];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(
        children: [ ListView.builder(itemBuilder: (context, index) {
          return Row(
            children: [
              Container(
                height: 100, width: 100,
                color: colors[index],
                child: Column(
                  children: [
                    Text("1"),
                    Text("Tusday")
                  ],
                ),
              ),
              Container(
                child: Text("Burger"),
              ),
            ],
          );
        }, itemCount: colors.length,),]
      ),

    );

  }

}