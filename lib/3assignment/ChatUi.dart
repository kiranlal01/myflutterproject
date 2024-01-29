import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: homePage(),
    debugShowCheckedModeBanner: false,
  ));
}

class homePage extends StatelessWidget {
  var img = [
    "assets/images/3assign/lady1.png",
    "assets/images/3assign/men1.png",
    "assets/images/3assign/lady2.png",
    "assets/images/3assign/lady3.png",
    "assets/images/3assign/men2.png",
    "assets/images/3assign/lady4.png",
    "assets/images/3assign/men3.png",
    "assets/images/3assign/men4.png",
  ];
  var name = [
    "Emma Walkins",
    "Kriss Benwat",
    "Bella Hammers",
    "Rezi Makarov",
    "Gustav Lemelo",
    "Jenna Arris",
    "Ken Simada",
    "Bob Ryder",
  ];
  var sts = [
    "Good to know",
    "its been awhile",
    "Hey, where are you?",
    "I am going out!",
    "Just attach the image and send it",
    "its over",
    "Your welcome",
    "Hey,are you there?"
  ];
  var lstseen = [
    "Today",
    "Yesterday",
    "28 Jan",
    "24 Jan",
    "19 Jan",
    "12 Jan",
    "5 Jan",
    "30 Dec"
  ];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: [
        SliverAppBar(
          floating: true,
          pinned: true,
          expandedHeight: 100,
          actions: [
            ElevatedButton(
                onPressed: () {},
                child: Row(
                  children: [
                    Icon(
                      Icons.add,
                      color: Colors.red,
                      size:15,
                    ),
                    Text("Add New",style: TextStyle(color: Colors.black,fontSize: 10),),
                  ],
                ))
          ],
          flexibleSpace: ListView(
            children: [
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text("Conversations",style: TextStyle(fontSize: 25),),
              ),
              SizedBox(height:5),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Container(
                    color: Colors.blueGrey,
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: "Search...",
                        prefixIcon: Icon(Icons.search),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        SliverList(delegate: SliverChildBuilderDelegate((context,index){
          return childBuild(index);
        },childCount: img.length))
      ]),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.blueGrey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.chat,),label: "Chats"),
          BottomNavigationBarItem(icon: Icon(Icons.local_movies),label: "Channels"),
          BottomNavigationBarItem(icon: Icon(Icons.account_box_rounded),label: "Profile")
        ],
      ),
    );
  }

  Widget childBuild(index) {

    return ListTile(
      leading: CircleAvatar(backgroundImage: AssetImage("${img[index]}"),),
      title: Text("${name[index]}"),
      subtitle: Text("${sts[index]}"),
      trailing: Text("${lstseen[index]}"),
    );
  }
  }


