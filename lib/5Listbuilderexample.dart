import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Listbuild(),useInheritedMediaQuery: true,debugShowCheckedModeBanner: false,));
}

class Listbuild extends StatelessWidget{
  var name=["Pasta","Maggi","Cake","Pancake","Pizza","Burger","Fries"];
  var image=["assets/icon/pasta.png","assets/icon/maggi.png","assets/icon/cake.png","assets/icon/pancake.png","assets/icon/pizza.png","assets/icon/burger.png","assets/icon/fries.png"];
  var time=["30 mins","2 mins","45 mins","10 mins","60 mins","45 mins","30 mins"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Recipe Book"),backgroundColor: Colors.deepPurpleAccent,foregroundColor: Colors.white,),
      body: ListView.builder(itemBuilder: (context,index){
        return Card(
          child: ListTile(
            leading: Image(image: AssetImage("${image[index]}"),),
            title: Text("${name[index]}",style: TextStyle(color: Colors.deepPurpleAccent),),
            trailing: Text("${time[index]}",style: TextStyle(color: Colors.deepPurpleAccent),),
          ),
        );
      },itemCount: name.length,),

    );
  }

}