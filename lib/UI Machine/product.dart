import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: ProductPage(),debugShowCheckedModeBanner: false,));
}

class ProductPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,width: double.infinity,
            color: Colors.white,
            child: Column(
              children: [
                SizedBox(height: 380,),
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipRRect(borderRadius: BorderRadius.circular(15),
                      child: Container(color: Colors.orange,
                        height: 30,width: 120,
                        child: Center(child: Text("Juice",style: TextStyle(color: Colors.white),)),
                      ),
                    ),
                    SizedBox(width: 25,),
                    ClipRRect(borderRadius: BorderRadius.circular(15),
                      child: Container(color: Colors.green[100],
                        height: 30,width: 120,
                        child: Center(child: Text("Juice",style: TextStyle(color: Colors.green[900]),)),
                      ),
                    ),
                    SizedBox(width: 25,),
                    ClipRRect(borderRadius: BorderRadius.circular(15),
                      child: Container(color: Colors.green[100],
                        height: 30,width: 120,
                        child: Center(child: Text("Juice",style: TextStyle(color: Colors.green[900]),)),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.only(right: 345),
                  child: Text("Food Informmation",style: TextStyle(fontWeight: FontWeight.w900),),
                ),
                SizedBox(height: 5,),
                Padding(
                  padding: const EdgeInsets.only(left: 20,right: 20),
                  child: Text("Food is one of the basic necessities of life. Food contains nutrients—substances essential for the growth, repair, and maintenance of body tissues and for the regulation of vital processes. Nutrients provide the energy our bodies need to function."),
                ),
                SizedBox(height: 20,),
                Row(mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipRRect(borderRadius: BorderRadius.circular(5),
                        child: Container(color: Colors.pink[100],
                          height: 60,width: 100,
                          child: Image(image: AssetImage("assets/icons/bakery.png"),),
                        )
                    ),
                    SizedBox(width: 15,),
                    ClipRRect(borderRadius: BorderRadius.circular(5),
                        child: Container(color: Colors.blue[100],
                          height: 60,width: 100,
                          child: Image(image: AssetImage("assets/icons/dairy.png")),
                        )),
                    SizedBox(width: 15,),
                    ClipRRect(borderRadius: BorderRadius.circular(5),
                        child: Container(color: Colors.orange[100],
                          height: 60,width: 100,
                          child: Image(image: AssetImage("assets/icons/seafood.png")),
                        )),
                    SizedBox(width: 15,),
                    ClipRRect(borderRadius: BorderRadius.circular(5),
                        child: Container(color: Colors.red[100],
                          height: 60,width: 100,
                          child: Image(image: AssetImage("assets/icons/snacks.png")),
                        ))
                  ],
                ),
              ],
            ),

          ),
          Positioned(bottom: 350,
            child: ClipRRect(borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),bottomLeft: Radius.circular(20)),
              child: Container(
                height: 500,width: 500,
                color: Colors.blueGrey[100],
                child: Column(
                  children : [
                    SizedBox(height: 405,),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text("Lunch Food",style: TextStyle(fontWeight: FontWeight.w900),),
                        ),
                        SizedBox(width: 360,),
                        Icon(Icons.favorite,color: Colors.red[900])
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 410),
                      child: Text("\$30.00",style: TextStyle(color: Colors.orange[900])),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                          ClipRRect(borderRadius: BorderRadius.circular(15),
                            child: Container(color: Colors.white,
                              height: 30,width: 70,
                              child: Center(child: Text("Juice",style: TextStyle(color: Colors.pink[900]),)),
                            ),
                          ),
                          SizedBox(width: 5,),
                          ClipRRect(borderRadius: BorderRadius.circular(15),
                            child: Container(color: Colors.white,
                              height: 30,width: 70,
                              child: Center(child: Text("Juice",style: TextStyle(color: Colors.orange[900]),)),
                            ),
                          ),
                          SizedBox(width: 5,),
                          ClipRRect(borderRadius: BorderRadius.circular(15),
                            child: Container(color: Colors.white,
                              height: 30,width: 70,
                              child: Center(child: Text("Juice",style: TextStyle(color: Colors.blue[900]),)),
                            ),
                          ),
                          SizedBox(width: 140,),
                          Icon(Icons.star,color: Colors.orangeAccent,size: 20,),
                          Icon(Icons.star,color: Colors.orangeAccent,size: 20,),
                          Icon(Icons.star,color: Colors.orangeAccent,size: 20,),
                          Icon(Icons.star,color: Colors.orangeAccent,size: 20,),
                          Icon(Icons.star,color: Colors.orangeAccent,size: 20,)
                        ],
                      ),
                    )
                  ]
                ),
              ),
            ),
          ),
          Positioned(bottom: 450,
            child: ClipRRect(borderRadius: BorderRadius.only(bottomRight: Radius.circular(20),bottomLeft: Radius.circular(20)),
              child: Container(
                height: 400,width: 500,
                color: Colors.brown[300],
                child: Row(
                  children: [
                    SizedBox(height: 40,),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: ClipRRect(borderRadius: BorderRadius.circular(10),
                        child: Container(height: 30,width: 30,
                            color: Colors.white,
                            child: Icon(Icons.arrow_back)),
                      ),
                    ),
                    SizedBox(width: 400,),
                    ClipRRect(borderRadius: BorderRadius.circular(10),
                      child: Container(height: 30,width: 30,
                          color: Colors.white,
                          child: Icon(Icons.card_travel)),
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(top: 70,left: 170,
              child: Image(image: AssetImage("assets/icons/meals.png"),height: 150,width: 150,)),
          Positioned(top: 630,
              child: ClipRRect(borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20)),
                child: Container(color: Colors.blueGrey[100],
                  height: 80,width: 500,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: ClipRRect(borderRadius: BorderRadius.circular(30),
                          child: Container(color: Colors.white,
                            height: 30,width: 30,
                            child: Center(child: Icon(Icons.add,size: 20,)),
                          ),
                        ),
                      ),
                      SizedBox(width: 10,),
                      ClipRRect(borderRadius: BorderRadius.circular(30),
                          child: Container(color: Colors.white,
                            height: 30,width: 70,
                            child: Center(child: Text("2",style: TextStyle(fontWeight: FontWeight.w900),)),
                          )),
                      SizedBox(width: 10,),
                      ClipRRect(borderRadius: BorderRadius.circular(30),
                          child: Container(color: Colors.white,
                            height: 30,width: 30,
                            child: Center(child: Icon(Icons.remove,size: 20,)),
                          )),
                      SizedBox(width: 160,),
                      ClipRRect(borderRadius: BorderRadius.circular(30),
                          child: Container(color: Colors.orange,
                            height: 30,width: 150,
                            child: Center(child: Text("ADD TO CART",style: TextStyle(color: Colors.white),)),
                          )),
                    ],
                  ),

                ),
              ))
        ],
      ),
    );
  }

}