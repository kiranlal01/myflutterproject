import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: Products(),debugShowCheckedModeBanner: false,));
}

class Products extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.green,
            height: double.infinity,width: double.infinity,
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10,top: 10),
                      child: Icon(Icons.arrow_back,color: Colors.white,),
                    ),
                    SizedBox(width:430),
                    Padding(
                      padding: const EdgeInsets.only(right: 10,top: 10),
                      child: Icon(Icons.shopping_cart,color: Colors.white,),
                    ),
                  ],
                ),
                SizedBox(height: 40,),
                Padding(
                  padding: const EdgeInsets.only(right: 400),
                  child: Text("Green Tea",style: TextStyle(color: Colors.white,fontSize: 20),),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 400),
                  child: Text("wsdrtyhjkl",style: TextStyle(color: Colors.white),),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.only(right: 400),
                  child: Text("\$36",style: TextStyle(fontSize: 50,color: Colors.white),),
                )
              ],
            ),
          ),
          Positioned(
            width: 500,height: 700,
            top: 250,
            child: ClipRRect(borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight: Radius.circular(20)),
              child: Container(
                color: Colors.white,
                child: Column(
                  children: [
                    SizedBox(height: 40,),
                    Padding(
                      padding: const EdgeInsets.only(right: 360),
                      child: Text("Particulars",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),),
                    ),
                    SizedBox(height: 5,),
                    Padding(
                      padding: const EdgeInsets.only(left: 20,right: 20),
                      child: Text("Green Tea is made from Unoxidised and still Green Tea leaves, they are a good source of Antioxidants and Flavinoids. They are widely used for artisinal use and flavour purposes and widely preffered by many."),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                          Icon(Icons.star,color: Colors.green,),
                          Icon(Icons.star,color: Colors.green,),
                          Icon(Icons.star,color: Colors.green,),
                          Icon(Icons.star,color: Colors.green,),
                          Icon(Icons.star,color: Colors.green,),
                          Icon(Icons.star,color: Colors.green,),
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(
                        children: [
                          SizedBox(height: 20,),
                          ClipRRect(borderRadius: BorderRadius.circular(30),
                            child: Container(
                              height: 100,width: 100,
                              color: Colors.greenAccent,
                              child: Column(mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.coffee,size: 50,),
                                  Text("prod1")
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 70,),
                          ClipRRect(borderRadius: BorderRadius.circular(30),
                            child: Container(
                              height: 100,width: 100,
                              color: Colors.greenAccent,
                              child: Column(mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.ac_unit,size: 50),
                                  Text("prod1")
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 70,),
                          ClipRRect(borderRadius: BorderRadius.circular(30),
                            child: Container(
                              height: 100,width: 100,
                              color: Colors.greenAccent,
                              child: Column(mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.account_tree_outlined,size: 50),
                                  Text("prod1")
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.only(right: 360),
                      child: Text("Service",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),),
                    ),
                    SizedBox(height: 5,),
                    Padding(
                      padding: const EdgeInsets.only(left: 20,right: 20),
                      child: Text("This green tea gift set, packed with the goodness of nutrients, walks you through a journey of rich taste and flavor that is ideal for you and your loved ones!"),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
              height: 400,width: 200,
              top: 10,right: 10,
              child: Image(image: AssetImage("assets/images/greentea11.png"))
          ),
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.blueGrey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart,),label: "Cart"),
          BottomNavigationBarItem(icon: Icon(Icons.favorite),label: "favorite"),
          BottomNavigationBarItem(icon: Icon(Icons.shopify),label: "Purchased")
        ],
      ),
    );
  }

}