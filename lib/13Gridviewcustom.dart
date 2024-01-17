import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Gridviewcustom(),debugShowCheckedModeBanner: false,));
}

class Gridviewcustom extends StatelessWidget{
  var images=["assets/icon/minion.png","assets/icon/frog.png","assets/icon/gecko.png","assets/icon/monkey.png","assets/icon/panda.png"];
  var name=["minion","frog","gecko","monkey","panda"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.custom(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          childrenDelegate: SliverChildBuilderDelegate((context,index){
            return Card(
              child: Column(
                children: [SizedBox(height: 100,),
                  Image(image: AssetImage(images[index]),height: 50,width: 50,),
                  Text("${name[index]}")
                ],
              ),
            );
          },childCount: images.length)),
    );
  }

}