import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Cart(),debugShowCheckedModeBanner: false,));
}

class Cart extends StatelessWidget{
  var img = [
    "assets/images/cappuccino.png",
    "assets/images/latte.png",
    "assets/images/coffee.png",
    "assets/images/cappuccino.png",
    "assets/images/latte.png",
    "assets/images/coffee.png"
  ];
  var name = [
    "Cappuccino",
    "Latte",
    "Coffee",
    "Cappuccino",
    "Latte",
    "Coffee",

  ];
  var sub = [
    "asdfghjk",
    "qwertyui",
    "zxcvbnm",
    "asdfghjk",
    "qwertyui",
    "zxcvbnm",


  ];
  var price = [
    "\$24",
    "\$33",
    "\$45",
    "\$24",
    "\$33",
    "\$45",

  ];
  var num = ["1","2","3","1","2","3"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [ SliverAppBar(
          floating: true,
          pinned: true,
          expandedHeight: 150,
          actions: [
            Icon(Icons.menu)
          ],
          flexibleSpace:  ListView(
            children: [
              SizedBox(height: 50,),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text("Shopping Cart",style: TextStyle(fontSize: 25),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Text("Total price",),
              ),
            ],
          ),
        ),
          SliverList(delegate: SliverChildBuilderDelegate((context,index){
            return cartList(index);
          },childCount: name.length)),
          SliverToBoxAdapter(
            child: total(),
          )
      ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.blueGrey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home,),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.card_travel),label: "Cart"),
          BottomNavigationBarItem(icon: Icon(Icons.account_box_rounded),label: "Account")
        ],
      ),
    );
  }

  Widget cartList(int index) {
    return Column(
      children: [
        ListTile(
          leading: Container(color: Colors.green,
              child: Image(image: AssetImage("${img[index]}"),)
          ),
          title: Text("${name[index]}",style:TextStyle(fontWeight: FontWeight.w600)),
          subtitle: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 310),
                child: Text("${sub[index]}"),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 310),
                child: Text("${price[index]}",style: TextStyle(color: Colors.green),),
              ),
            ],
          ),
          trailing: Column(
            children: [
              Icon(Icons.add,size: 15,),
              Text("${num[index]}"),
              Icon(Icons.minimize,size: 15,)
            ],
          )
          // Text("${price[index]}"),
        ),
      ],
    );
  }

 Widget total() {
    return Center(
      child: ClipRRect(borderRadius: BorderRadius.circular(30),
        child: Container(color:Colors.green,
          height: 50,width: 200,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 22),
                child: Text("Total",style: TextStyle(color: Colors.white),),
              ),
              SizedBox(width: 30,),
              Text("\$ 100",style: TextStyle(color: Colors.white),),
              SizedBox(width: 30,),
              Text("Next",style: TextStyle(color: Colors.white),),
            ],
          ),
        ),
      ),
    );
  }

}