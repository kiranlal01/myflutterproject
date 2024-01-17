import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
void main(){
  runApp(MaterialApp(home: Stggered(),debugShowCheckedModeBanner: false,));
}

class Stggered extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: StaggeredGrid.count(
          crossAxisCount: 4,
          mainAxisSpacing: 4,
          crossAxisSpacing: 4,
          children:  [
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 2,
              child: Container(child: Column(
                children: [
                  Image(image: AssetImage("Assets/Imges/frog.png"),height: 30,width: 30,),
                ],
              ),color: Colors.amber,),
            ),
            StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 2,
              child: Container(child: Column(
                children: [
                  Text("Hey"),
                ],
              ),color: Colors.blue,),
            ),


          ],
        ),
      ),
    );
  }

}