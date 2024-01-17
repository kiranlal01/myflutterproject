import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: gridviewcustom(),debugShowCheckedModeBanner: false,));
}

class gridviewcustom extends StatelessWidget{
  var images=["assets/icon/minion.png","assets/icon/frog.png","assets/icon/gecko.png","assets/icon/monkey.png","assets/icon/panda.png"];
  var name=["minion","frog","gecko","monkey","panda"];
  var prize=["500","1000","1500","2000","2500"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.custom(gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 400),
          childrenDelegate: SliverChildListDelegate(
              List.generate(5, (index) {
                return Card(
                  child: Column(
                    children: [SizedBox(height: 100,),
                      Image(image: AssetImage(images[index]),height: 50,width: 50,),
                      Text("${name[index]},${prize[index]}")
                    ],
                  ),
                );
              })
          )),
    );
  }

}