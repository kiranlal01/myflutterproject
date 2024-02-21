import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: carousel(),debugShowCheckedModeBanner: false,));
}

class carousel extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: CarouselSlider(
          items: [
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
            )
          ],
          options: CarouselOptions(
            aspectRatio: 1.0,
            enlargeCenterPage: false,
            enableInfiniteScroll: true,
            initialPage: 2,
            autoPlay: true,
          )
        ),
      ),
    );
  }
}