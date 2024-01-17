import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: listbuilder(),useInheritedMediaQuery: true,debugShowCheckedModeBanner: false,));
}

class listbuilder extends StatelessWidget{
  var title=["Ace","King","Jack","Roger","Prince"];
  var phone=["345678","34937838","0987654","92478624","9129626"];
  //var color=[800,300,50,500,1000];
  var colors=[Colors.pink,Colors.green,Colors.blue,Colors.deepPurple,Colors.yellowAccent];
  var image=["assets/icon/frog.png","assets/icon/gecko.png","assets/icon/lizard.png","assets/icon/minion.png","assets/icon/monkey.png"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ListViewBuilder"),backgroundColor: Colors.black,foregroundColor: Colors.blue,),
      body: ListView.builder(itemBuilder: (context,index){
        return Card(color: colors[index],
          child: ListTile(
            leading: CircleAvatar(backgroundImage: AssetImage("${image[index]}"),),
            title: Text("${title[index]}"),
            subtitle: Text("${phone[index]}"),
            trailing: Icon(Icons.call),
          ),
        );
      },itemCount: title.length,),
    );
  }

}