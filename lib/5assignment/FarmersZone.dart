import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Zone(),debugShowCheckedModeBanner: false,));
}

class Zone extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.green,
            floating: true,
            pinned: true,
            expandedHeight: 100,
            actions: [
              Row(
                children: [
                  Icon(Icons.location_on_outlined,color: Colors.white,),
                  Text("Kochi",style: TextStyle(color: Colors.white),)
                ],
              )
            ],
            flexibleSpace: ListView(
              children: [
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text("FARMERS FRESH ZONE",style: TextStyle(color: Colors.white),),
                ),
                SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: Container(color: Colors.white,
                    child: TextField(decoration: InputDecoration(
                      prefixIcon: Icon(Icons.search,),
                      hintText: "Search for vegetables and fruits.."
                    ),
                    ),
                  ),
                )
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: contentDetails(),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.green,),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart,color: Colors.green,),label: "Cart"),
          BottomNavigationBarItem(icon: Icon(Icons.person,color: Colors.green,),label: "Account")
        ],
      ),
    );
  }

 Widget contentDetails() {
    return Container(
      child: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              Container(
                  margin: const EdgeInsets.all(15.0),
                  padding: const EdgeInsets.only(left: 25,right: 25),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.greenAccent),
                    borderRadius: BorderRadius.circular(30)
                  ),
                  child: Text("Vegetables",style: TextStyle(color: Colors.green),)),
              SizedBox(width: 10,),
              Container(
                  margin: const EdgeInsets.all(15.0),
                  padding: const EdgeInsets.only(left: 25,right: 25),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.greenAccent),
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: Text("Fruits",style: TextStyle(color: Colors.green),)),
              SizedBox(width: 10,),
              Container(
                  margin: const EdgeInsets.all(15.0),
                  padding: const EdgeInsets.only(left: 25,right: 25),
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.greenAccent),
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: Text("Exotic Cuts",style: TextStyle(color: Colors.green),))
            ],
          ),
          SizedBox(height: 10,),
          CarouselSlider(
              items: [
                Image(image: AssetImage("assets/images/introduction/fullscreen.jpg")),
                Image(image: AssetImage("assets/images/introduction/fullscreen.jpg")),
                Image(image: AssetImage("assets/images/introduction/fullscreen.jpg")),
              ],
              options: CarouselOptions(
                aspectRatio: 2.0,
                enlargeCenterPage: true,
                enableInfiniteScroll: false,
                initialPage: 2,
                autoPlay: true,
              )
          ),
          SizedBox(height: 30,),
          Container(
            margin: const EdgeInsets.all(15.0),
            padding: const EdgeInsets.only(left: 25,right: 25),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black),

            ),
            child: Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Icon(Icons.timer_rounded),
                    SizedBox(height: 5,),
                    Text("30 mins policy")
                  ],
                ),
                SizedBox(width: 50,),
                Column(
                  children: [
                    Icon(Icons.location_history_outlined),
                    SizedBox(height: 5,),
                    Text("Traceability")
                  ],
                ),
                SizedBox(width: 50,),
                Column(
                  children: [
                    Icon(Icons.home_work),
                    SizedBox(height: 5,),
                    Text("Local Surrounding")
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 10,),
          Text("Shop by Category",style: TextStyle(fontWeight: FontWeight.w900),),
          SizedBox(height: 20,),
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(height: 60,width: 130,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          offset: const Offset(
                            5.0,
                            5.0,
                          ),
                          blurRadius: 10.0,
                          spreadRadius: 2.0,
                        ),
                      ]
                  ),
                  child: Image(image: AssetImage("assets/images/tomato.png"),fit: BoxFit.fill,)),
              SizedBox(width: 20,),
              Container(height: 60,width: 130,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          offset: const Offset(
                            5.0,
                            5.0,
                          ),
                          blurRadius: 10.0,
                          spreadRadius: 2.0,
                        ),
                      ]
                  ),
                  child: Image(image: AssetImage("assets/images/tomato.png"),fit: BoxFit.fill,)),
              SizedBox(width: 20,),
              Container(height: 60,width: 130,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black,
                        offset: const Offset(
                          5.0,
                          5.0,
                        ),
                        blurRadius: 10.0,
                        spreadRadius: 2.0,
                      ),
                    ]
                  ),
                  child: Image(image: AssetImage("assets/images/tomato.png"),fit: BoxFit.fill,)),

            ],
          ),
        ],
      ),
    );
 }

}