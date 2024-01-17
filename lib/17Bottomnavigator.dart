import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: bottomNav(),debugShowCheckedModeBanner: false,));
}

class bottomNav extends StatefulWidget{
  @override
  State<bottomNav> createState() => _bottomNavState();
}

class _bottomNavState extends State<bottomNav> {
  var screen=[
    Text("Home"),
    Text("Category"),
    Text("Account"),
    Text("Cart"),
    Text("Notification")
  ];
  int index=2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bottom Navigator"),),
      bottomNavigationBar: ClipRRect(borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
        child: BottomNavigationBar(
          currentIndex: index,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.green,
          selectedItemColor: Colors.purpleAccent,
          unselectedItemColor: Colors.blueGrey,
          onTap: (tapindex){
            setState(() {
              index=tapindex;
            });
          },
          items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.category),label: "Category"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "Account"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: "Cart"),
          BottomNavigationBarItem(icon: Icon(Icons.notifications),label: "Notification")
        ],),
      ),
      body: Center(child: screen[index]),
    );
  }
}