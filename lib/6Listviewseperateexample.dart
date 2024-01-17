import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Listseperater(),debugShowCheckedModeBanner: false,));
}

class Listseperater extends StatelessWidget{
  var title=["List Item 1","List Item 2","List Item 3","List Item 4","List Item 5","List Item 6","List Item 7","List Item 8","List Item 9","List Item 10"];
  var sep=["Separater 1","Separater 2","Separater 3","Separater 4","Separater 5","Separater 6","Separater 7","Separater 8","Separater 9","Separater 10"];
  @override
  Widget build(BuildContext context) {

    return Scaffold(backgroundColor: Colors.black,
      appBar: AppBar(title: Text("ListView.separated()"),backgroundColor: Colors.green,foregroundColor: Colors.white,),
      body: ListView.separated(itemBuilder: (context,index){
        return Card(color: Colors.cyan,child: ListTile(
          title: Text("${title[index]}"),
        ),);
      }, separatorBuilder: (context,index){
        return Card(color: Colors.grey,
          child: Text("${sep[index]}"),);
      }, itemCount: title.length,),
    );
  }

}