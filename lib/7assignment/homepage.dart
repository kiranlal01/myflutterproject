import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: homePage(),
    debugShowCheckedModeBanner: false,
  ));
}

class homePage extends StatelessWidget {

  var img = [
    "assets/images/cappuccino.png",
    "assets/images/latte.png",
    "assets/images/coffee.png"
  ];
  var name = [
    "Cappuccino",
    "Latte",
    "Coffee",

  ];
  var sub = [
    "asdfghjk",
    "qwertyui",
    "zxcvbnm",

  ];
  var price = [
    "\$24",
    "\$33",
    "\$45",

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: [
        SliverAppBar(
          floating: true,
          pinned: true,
          expandedHeight: 150,
          actions: [
            Icon(Icons.menu)
          ],
          flexibleSpace: ListView(
            children: [
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text("Venus",style: TextStyle(fontSize: 25),),
              ),
              SizedBox(height:30),
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
        SliverToBoxAdapter(
          child: productsBuild(),
        ),
        SliverToBoxAdapter(
          child: heading(),
        ),
        SliverList(delegate: SliverChildBuilderDelegate((context,index){
          return productList(index);
        },childCount: name.length))
      ]),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.blueGrey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home,),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.card_travel),label: "Cart"),
          BottomNavigationBarItem(icon: Icon(Icons.account_box_rounded),label: "Account")
        ],
      ),
    );
  }

 Widget productsBuild() {
    return Row(mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            Text("product1"),
            SizedBox(height: 10,),
            ClipRRect(borderRadius: BorderRadius.circular(30),
              child: Container(
                color: Colors.green,
                height: 100,width: 100,
                child: Column(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(image: AssetImage("assets/images/cappuccino.png"),height: 50,width: 50,),
                    Text("prod1",style: TextStyle(color: Colors.white),)
                  ],
                ),
              ),
            ),

          ],
        ),
        SizedBox(width: 30,),
        Column(
          children: [
            Text("product2"),
            SizedBox(height: 10,),
            ClipRRect(borderRadius: BorderRadius.circular(30),
              child: Container(
                color: Colors.green,
                height: 100,width: 100,
                child: Column(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(image: AssetImage("assets/images/latte.png"),height: 50,width: 50,),
                    Text("prod2",style: TextStyle(color: Colors.white),)
                  ],
                ),
              ),
            ),

          ],
        ),
        SizedBox(width: 30,),
        Column(
          children: [
            Text("product3"),
            SizedBox(height: 10,),
            ClipRRect(borderRadius: BorderRadius.circular(30),
              child: Container(
                color: Colors.green,
                height: 100,width: 100,
                child: Column(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(image: AssetImage("assets/images/coffee.png"),height: 50,width: 50,),
                    Text("prod3",style: TextStyle(color: Colors.white),)
                  ],
                ),
              ),
            ),

          ],
        )
      ],
    );
 }

  Widget productList(index) {
    return Column(
      children: [
        ListTile(
          leading: ClipRRect(borderRadius: BorderRadius.circular(10),
              child: Container(height: 100,width: 60,
                  color: Colors.green,
                  child: Image(image: AssetImage("${img[index]}"),)
              )
          ),
          title: Text("${name[index]}"),
          subtitle: Text("${sub[index]}"),
          trailing: Text("${price[index]}",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w900),),
        ),
      ],
    );
  }

  heading() {
    return Column(
      children: [
        SizedBox(height: 60,),
        Padding(
          padding: const EdgeInsets.only(right: 400),
          child: Text("Will Buy",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 20),),
        ),
        SizedBox(height: 10,),
      ],
    );
  }


}
// Text("product2"),
// SizedBox(height: 5,),
// Container(
// color: Colors.green,
// height: 50,width: 50,
// child: Column(mainAxisAlignment: MainAxisAlignment.center,
// children: [
// Icon(Icons.ac_unit),
// Text("prod1")
// ],
// ),
// ),
// Text("product3"),
// SizedBox(height: 5,),
// Container(
// color: Colors.green,
// height: 50,width: 50,
// child: Column(mainAxisAlignment: MainAxisAlignment.center,
// children: [
// Icon(Icons.ac_unit),
// Text("prod1")
// ],
// ),
// ),
