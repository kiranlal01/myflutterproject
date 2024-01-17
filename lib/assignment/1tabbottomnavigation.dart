import 'package:flutter/material.dart';

import '1listview.dart';
void main(){
  runApp(MaterialApp(home: tabbottom(),debugShowCheckedModeBanner: false,));
}

class tabbottom extends StatefulWidget{
  @override
  State<tabbottom> createState() => _tabbottomState();
}

class _tabbottomState extends State<tabbottom> {
  var screen=[
    Text("Home"),
    listView(),
    Text("Cart"),
    Text("Account"),

  ];
  int index=1;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 2,
      child: Scaffold(
        appBar: AppBar(
          // title: Text("AppBar"),
          backgroundColor: Colors.blue,
          bottom: TabBar(
            indicatorColor: Colors.blue,
              tabs: [
                Tab(text: "Lunches",),
                Tab(text: "Cart"),
                ]
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.blueGrey,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.black45,
          type: BottomNavigationBarType.shifting,
          currentIndex: index,
          onTap: (tapindex){
            setState(() {
              index=tapindex;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home,),label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.lunch_dining,),label: "Lunches"),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_cart,),label: "Cart"),
            BottomNavigationBarItem(icon: Icon(Icons.person,),label: "Account"),

          ],
        ),
        body: screen[index],

      ),
    );
  }
}