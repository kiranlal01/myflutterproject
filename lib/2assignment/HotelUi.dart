import 'dart:js';

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
          SliverList(delegate: SliverChildBuilderDelegate((context,index){
            return hotelRooms(index);
          },childCount: images.length))

        ],
      ),
    );
  }

  Widget categoryBuild() {

    return Container(height: 200, width: 200,
      child: Row(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(padding: const EdgeInsets.only(left: 25)),
          ClipRRect(borderRadius: BorderRadius.circular(5),
            child: Container(
              child: Column(
                children: [SizedBox(height: 25,),
                  Icon(Icons.hotel, color: Colors.white,),
                  Text("Hotel", style: TextStyle(color: Colors.white),)
                ],
              ),
              color: Colors.red, height: 100, width: 130,),
          ),
          Padding(padding: const EdgeInsets.only(left: 25)),
          ClipRRect(borderRadius: BorderRadius.circular(5),
            child: Container(
              child: Column(
                children: [SizedBox(height: 25,),
                  Icon(Icons.restaurant, color: Colors.white,),
                  Text("Restaurant", style: TextStyle(color: Colors.white),)
                ],
              ),
              color: Colors.blue, height: 100, width: 130,),
          ),
          Padding(padding: const EdgeInsets.only(left: 25)),
          ClipRRect(borderRadius: BorderRadius.circular(5),
            child: Container(
              child: Column(
                children: [SizedBox(height: 25,),
                  Icon(Icons.local_cafe, color: Colors.white,),
                  Text("Cafe", style: TextStyle(color: Colors.white),)
                ],
              ),
              color: Colors.orange, height: 100, width: 130,),
          ),
        ],
      ),
    );
  }

  Widget hotelRooms(index) {

    return Container(height: 400,width: 400,
      child: Column(
        children: [
          Stack(
            children: [
              ClipRRect(borderRadius: BorderRadius.circular(10),
                  child: Image(image: AssetImage("${images[index]}"),height:250,width:400,)),
              Positioned(child: Icon(Icons.favorite,color: Colors.red,),
              right: 20,top: 15,),
              Positioned(
                child: Container(color: Colors.white,
                  height: 30,width: 30,
                  child: Center(child: Text("\$40",style: TextStyle(color: Colors.black),)),
                ),
                right: 20,bottom: 15,
              ),
            ],
          ),
          Text("${title[index]}",style: TextStyle(fontSize: 20),),
          Text("Kakkand,Kochi"),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.star),
              Icon(Icons.star),
              Icon(Icons.star),
              Icon(Icons.star),
              Icon(Icons.star),
              Text("(220 reviews)")

            ],
          )
          
        ],
      ),
    );
  }

}