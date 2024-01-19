import 'dart:js';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Hotel(),debugShowCheckedModeBanner: false,));
}

class Hotel extends StatelessWidget {
  var images = [
    "assets/images/room4.png",
    "assets/images/room5.png",
    "assets/images/room6.png",
    "assets/images/room7.png",
  ];
  var title = [
    "Awesome room near Kakkanad",
    "Peaceful room",
    "Beautiful room",
    "Comfort room",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.cyan,
            floating: true,
            pinned: true,
            expandedHeight: 180,
            leading: Icon(Icons.menu),
            actions: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.favorite)),
            ],
            flexibleSpace: ListView(
              children: [
                SizedBox(height: 50),
                Center(
                  child: Text(
                    "Type Your Location", style: TextStyle(color: Colors.white),
                  ),
                ),
                Padding(padding: const EdgeInsets.only(left: 10, right: 10),
                  child: ClipRRect(borderRadius: BorderRadius.circular(20),
                    child: Container(
                      color: Colors.white,
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: "Kakkanad,Kochi",
                            prefix: Icon(Icons.search)
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: categoryBuild(),
          ),
        ],
      ),
    );
  }

  Widget categoryBuild() {
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const[
          SizedBox(width: 15.0,),
          Category(
            backgroundColor: Colors.pink,
            icon: Icons.hotel,
            title: "Hotel",
          ),
          SizedBox(width: 15.0,),
          Category(
            backgroundColor: Colors.green,
            icon: Icons.restaurant,
            title: "Restaurant",
          ),
          SizedBox(width: 15.0,),
          Category(
            backgroundColor: Colors.indigo,
            icon: Icons.local_cafe,
            title: "Cafe",
          )
        ],
      ),
    );
  }
}

class Category extends StatelessWidget{
  final IconData icon;
  final String title;
  final Color? backgroundColor;

  const Category({
    Key? key,
    required this.icon,
    required this.title,
    this.backgroundColor
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Container(
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: const BorderRadius.all(Radius.circular(5.0)),
        ),
        margin: const EdgeInsets.symmetric(vertical: 10.0),
        padding: const EdgeInsets.all(10.0),
        width: 100,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(icon,color: Colors.white,),
            const SizedBox(height: 5.0,),
            Text(title, style: const TextStyle(
              color: Colors.white
            ),)
          ],
        ),
      ),
    );
  }

}

