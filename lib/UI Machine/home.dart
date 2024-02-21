import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: HomePage(),debugShowCheckedModeBanner: false,));
}

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.white,
            floating: true,
            pinned: true,
            expandedHeight: 150,
            actions: [
              ClipRRect(borderRadius: BorderRadius.circular(10),
                child: Container(
                  height: 50,width: 50,
                  child: Image(image: AssetImage("assets/images/3assign/men1.png"),),
                ),
              )
            ],
            flexibleSpace: ListView(
              children: [
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text("Find Your Food",style: TextStyle(color: Colors.blueGrey,fontSize: 10),),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text("Nutrition Meal",style: TextStyle(color: Colors.black,fontSize: 18),),
                ),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: ClipRRect(borderRadius: BorderRadius.circular(15),
                    child: Container(color: Colors.grey,
                      child: TextField(decoration: InputDecoration(
                        hintText: "Search food...",
                        suffixIcon: Icon(Icons.search)
                      ),),
                    ),
                  ),
                )
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: productDetails(),
          ),
          SliverList(delegate: SliverChildListDelegate([
            SingleChildScrollView(
              child: Row(
                children: [
                  Stack(
                    children: [
                      Container(
                        color: Colors.white,
                        height: 400,width: 300,
                      ),
                      Positioned(left: 25,
                        child: ClipRRect(borderRadius: BorderRadius.circular(10),
                          child: Container(
                            color: Colors.green[200],
                            height: 300,width: 250,
                            child: Center(child: Image(image: AssetImage("assets/icons/breakfast.png"),height: 100,width: 100,)),
                          ),
                        ),
                      ),
                      Positioned(top: 260,left: 50,
                        child: ClipRRect(borderRadius: BorderRadius.circular(10),
                          child: Container(

                            color: Colors.grey,
                            width: 200,height: 100,
                            child: Column(
                              children: [
                                SizedBox(height: 10,),
                                Padding(padding: EdgeInsets.only(right:70),
                                    child: Text("Morning Breakfast",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 10),)),
                                Padding(padding: EdgeInsets.only(right: 125),
                                    child: Text("\$42.00",style: TextStyle(color: Colors.orangeAccent,fontSize: 10),)),
                                Padding(padding: EdgeInsets.only(left: 20),
                                  child: Row(children: [
                                    Icon(Icons.star,color: Colors.orangeAccent,size: 10,),
                                    Icon(Icons.star,color: Colors.orangeAccent,size: 10,),
                                    Icon(Icons.star,color: Colors.orangeAccent,size: 10,),
                                    Icon(Icons.star,color: Colors.orangeAccent,size: 10,),
                                    Icon(Icons.star,color: Colors.orangeAccent,size: 10,)
                                  ],),
                                ),
                                SizedBox(height: 10,),
                                Padding(padding: EdgeInsets.only(left: 20),
                                  child: Row(
                                    children: [
                                      ClipRRect(borderRadius: BorderRadius.circular(30),
                                        child: Container(color: Colors.pinkAccent[100],
                                          height: 30,width: 50,
                                          child: Center(child: Text("Juice",style: TextStyle(color: Colors.pink[900]),)),
                                        ),
                                      ),
                                      SizedBox(width: 5,),
                                      ClipRRect(borderRadius: BorderRadius.circular(30),
                                        child: Container(color: Colors.orange[100],
                                          height: 30,width: 50,
                                          child: Center(child: Text("Juice",style: TextStyle(color: Colors.orange[900]),)),
                                        ),
                                      ),
                                      SizedBox(width: 5,),
                                      ClipRRect(borderRadius: BorderRadius.circular(30),
                                        child: Container(color: Colors.blue[100],
                                          height: 30,width: 50,
                                          child: Center(child: Text("Juice",style: TextStyle(color: Colors.blue[900]),)),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Stack(
                    children: [
                      Container(
                        color: Colors.white,
                        height: 400,width: 300,
                      ),
                      Positioned(left: 25,
                        child: ClipRRect(borderRadius: BorderRadius.circular(10),
                          child: Container(
                            color: Colors.pink[200],
                            height: 300,width: 250,
                            child: Center(child: Image(image: AssetImage("assets/icons/breakfast.png"),height: 100,width: 100,)),
                          ),
                        ),
                      ),
                      Positioned(top: 260,left: 50,
                        child: ClipRRect(borderRadius: BorderRadius.circular(10),
                          child: Container(

                            color: Colors.grey,
                            width: 200,height: 100,
                            child: Column(
                              children: [
                                SizedBox(height: 10,),
                                Padding(padding: EdgeInsets.only(right:70),
                                    child: Text("Morning Breakfast",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 10),)),
                                Padding(padding: EdgeInsets.only(right: 125),
                                    child: Text("\$42.00",style: TextStyle(color: Colors.orangeAccent,fontSize: 10),)),
                                Padding(padding: EdgeInsets.only(left: 20),
                                  child: Row(children: [
                                    Icon(Icons.star,color: Colors.orangeAccent,size: 10,),
                                    Icon(Icons.star,color: Colors.orangeAccent,size: 10,),
                                    Icon(Icons.star,color: Colors.orangeAccent,size: 10,),
                                    Icon(Icons.star,color: Colors.orangeAccent,size: 10,),
                                    Icon(Icons.star,color: Colors.orangeAccent,size: 10,)
                                  ],),
                                ),
                                SizedBox(height: 10,),
                                Padding(padding: EdgeInsets.only(left: 20),
                                  child: Row(
                                    children: [
                                      ClipRRect(borderRadius: BorderRadius.circular(30),
                                        child: Container(color: Colors.pinkAccent[100],
                                          height: 30,width: 50,
                                          child: Center(child: Text("Juice",style: TextStyle(color: Colors.pink[900]),)),
                                        ),
                                      ),
                                      SizedBox(width: 5,),
                                      ClipRRect(borderRadius: BorderRadius.circular(30),
                                        child: Container(color: Colors.orange[100],
                                          height: 30,width: 50,
                                          child: Center(child: Text("Juice",style: TextStyle(color: Colors.orange[900]),)),
                                        ),
                                      ),
                                      SizedBox(width: 5,),
                                      ClipRRect(borderRadius: BorderRadius.circular(30),
                                        child: Container(color: Colors.blue[100],
                                          height: 30,width: 50,
                                          child: Center(child: Text("Juice",style: TextStyle(color: Colors.blue[900]),)),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            )
          ]))
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,

        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.blueGrey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.food_bank),label: "Food"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: "My Cart"),
          BottomNavigationBarItem(icon: Icon(Icons.person),label: "Account")
        ],
      ),
    );
  }

 Widget productDetails() {
    return Container(
      child: Column(
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  ClipRRect(borderRadius: BorderRadius.circular(5),
                      child: Container(color: Colors.pink[100],
                        height: 80,width: 80,
                        child: Image(image: AssetImage("assets/icons/bakery.png"),),
                      )
                  ),
                  SizedBox(height: 5,),
                  Text("Bakery")
                ],
              ),
              SizedBox(width: 20,),
              Column(
                children: [
                  ClipRRect(borderRadius: BorderRadius.circular(5),
                      child: Container(color: Colors.blue[100],
                        height: 80,width: 80,
                        child: Image(image: AssetImage("assets/icons/dairy.png")),
                      )),
                  SizedBox(height: 5,),
                  Text("Dairy")
                ],
              ),
              SizedBox(width: 20,),
              Column(
                children: [
                  ClipRRect(borderRadius: BorderRadius.circular(5),
                      child: Container(color: Colors.orange[100],
                        height: 80,width: 80,
                        child: Image(image: AssetImage("assets/icons/seafood.png")),
                      )),
                  SizedBox(height: 5,),
                  Text("Seafood")
                ],
              ),
              SizedBox(width: 20,),
              Column(
                children: [
                  ClipRRect(borderRadius: BorderRadius.circular(5),
                      child: Container(color: Colors.red[100],
                        height: 80,width: 80,
                        child: Image(image: AssetImage("assets/icons/snacks.png")),
                      )),
                  SizedBox(height: 5,),
                  Text("Snacks")
                ],
              )
            ],
          ),
          SizedBox(height: 20,),

          // Stack(
          //   children: [
          //     Container(
          //       color: Colors.white,
          //       height: 400,width: 300,
          //     ),
          //     Positioned(left: 25,
          //       child: ClipRRect(borderRadius: BorderRadius.circular(10),
          //         child: Container(
          //           color: Colors.green[200],
          //           height: 300,width: 250,
          //           child: Center(child: Image(image: AssetImage("assets/icons/breakfast.png"),height: 100,width: 100,)),
          //         ),
          //       ),
          //     ),
          //     Positioned(top: 260,left: 50,
          //       child: ClipRRect(borderRadius: BorderRadius.circular(10),
          //         child: Container(
          //
          //           color: Colors.grey,
          //           width: 200,height: 100,
          //           child: Column(
          //             children: [
          //               SizedBox(height: 10,),
          //               Padding(padding: EdgeInsets.only(right:70),
          //                   child: Text("Morning Breakfast",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 10),)),
          //               Padding(padding: EdgeInsets.only(right: 125),
          //                   child: Text("\$42.00",style: TextStyle(color: Colors.orangeAccent,fontSize: 10),)),
          //               Padding(padding: EdgeInsets.only(left: 20),
          //                 child: Row(children: [
          //                   Icon(Icons.star,color: Colors.orangeAccent,size: 10,),
          //                   Icon(Icons.star,color: Colors.orangeAccent,size: 10,),
          //                   Icon(Icons.star,color: Colors.orangeAccent,size: 10,),
          //                   Icon(Icons.star,color: Colors.orangeAccent,size: 10,),
          //                   Icon(Icons.star,color: Colors.orangeAccent,size: 10,)
          //                 ],),
          //               ),
          //               SizedBox(height: 10,),
          //               Padding(padding: EdgeInsets.only(left: 20),
          //                 child: Row(
          //                   children: [
          //                     ClipRRect(borderRadius: BorderRadius.circular(30),
          //                       child: Container(color: Colors.pinkAccent[100],
          //                         height: 30,width: 50,
          //                         child: Center(child: Text("Juice",style: TextStyle(color: Colors.pink[900]),)),
          //                       ),
          //                     ),
          //                     SizedBox(width: 5,),
          //                     ClipRRect(borderRadius: BorderRadius.circular(30),
          //                       child: Container(color: Colors.orange[100],
          //                         height: 30,width: 50,
          //                         child: Center(child: Text("Juice",style: TextStyle(color: Colors.orange[900]),)),
          //                       ),
          //                     ),
          //                     SizedBox(width: 5,),
          //                     ClipRRect(borderRadius: BorderRadius.circular(30),
          //                       child: Container(color: Colors.blue[100],
          //                         height: 30,width: 50,
          //                         child: Center(child: Text("Juice",style: TextStyle(color: Colors.blue[900]),)),
          //                       ),
          //                     ),
          //                   ],
          //                 ),
          //               )
          //             ],
          //           ),
          //         ),
          //       ),
          //     )
          //   ],
          // ),
          // Stack(
          //   children: [
          //     Container(
          //       color: Colors.white,
          //       height: 400,width: 300,
          //     ),
          //     Positioned(left: 25,
          //       child: ClipRRect(borderRadius: BorderRadius.circular(10),
          //         child: Container(
          //           color: Colors.pink[200],
          //           height: 300,width: 250,
          //           child: Center(child: Image(image: AssetImage("assets/icons/breakfast.png"),height: 100,width: 100,)),
          //         ),
          //       ),
          //     ),
          //     Positioned(top: 260,left: 50,
          //       child: ClipRRect(borderRadius: BorderRadius.circular(10),
          //         child: Container(
          //
          //           color: Colors.grey,
          //           width: 200,height: 100,
          //           child: Column(
          //             children: [
          //               SizedBox(height: 10,),
          //               Padding(padding: EdgeInsets.only(right:70),
          //                   child: Text("Morning Breakfast",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 10),)),
          //               Padding(padding: EdgeInsets.only(right: 125),
          //                   child: Text("\$42.00",style: TextStyle(color: Colors.orangeAccent,fontSize: 10),)),
          //               Padding(padding: EdgeInsets.only(left: 20),
          //                 child: Row(children: [
          //                   Icon(Icons.star,color: Colors.orangeAccent,size: 10,),
          //                   Icon(Icons.star,color: Colors.orangeAccent,size: 10,),
          //                   Icon(Icons.star,color: Colors.orangeAccent,size: 10,),
          //                   Icon(Icons.star,color: Colors.orangeAccent,size: 10,),
          //                   Icon(Icons.star,color: Colors.orangeAccent,size: 10,)
          //                 ],),
          //               ),
          //               SizedBox(height: 10,),
          //               Padding(padding: EdgeInsets.only(left: 20),
          //                 child: Row(
          //                   children: [
          //                     ClipRRect(borderRadius: BorderRadius.circular(30),
          //                       child: Container(color: Colors.pinkAccent[100],
          //                         height: 30,width: 50,
          //                         child: Center(child: Text("Juice",style: TextStyle(color: Colors.pink[900]),)),
          //                       ),
          //                     ),
          //                     SizedBox(width: 5,),
          //                     ClipRRect(borderRadius: BorderRadius.circular(30),
          //                       child: Container(color: Colors.orange[100],
          //                         height: 30,width: 50,
          //                         child: Center(child: Text("Juice",style: TextStyle(color: Colors.orange[900]),)),
          //                       ),
          //                     ),
          //                     SizedBox(width: 5,),
          //                     ClipRRect(borderRadius: BorderRadius.circular(30),
          //                       child: Container(color: Colors.blue[100],
          //                         height: 30,width: 50,
          //                         child: Center(child: Text("Juice",style: TextStyle(color: Colors.blue[900]),)),
          //                       ),
          //                     ),
          //                   ],
          //                 ),
          //               )
          //             ],
          //           ),
          //         ),
          //       ),
          //     )
          //   ],
          // )
        ],
      ),
    );
 }

}