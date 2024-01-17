import 'package:flutter/material.dart';

class calls extends StatelessWidget{
  var name=["Ace","King","Jack","Queen","Prince","Minion","Cane",];
  var dp=["A","K","J","Q","P","M","C"];
  var mailid=["ace@gmail.com","king@gmail.com","jack@gmail.com","queen@gmail.com","prince@gmail.com","minion@gmail.com","cane@gmail.com"];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context,index){
      return ListTile(
        leading: CircleAvatar(child: Text("${dp[index]}"),backgroundColor: Colors.cyanAccent,),
        title: Text("${name[index]}"),
        subtitle: Text("${mailid[index]}"),
        trailing: Icon(Icons.phone),
      );
    },itemCount: name.length,);

  }

}