import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: LivingRoom(),debugShowCheckedModeBanner: false,));
}


class LivingRoom extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,width: double.infinity,
            color: Colors.brown,
            child: Column(
              children: [
                Row(
                  children: [
                    SizedBox(height: 100,width:30),
                    Icon(Icons.arrow_back,color: Colors.white,),
                    SizedBox(width: 145,),
                    Text("Living Room",style: TextStyle(color: Colors.white),),
                    SizedBox(width: 145,),
                    Icon(Icons.settings,color: Colors.white,)
                  ],
                ),
                ClipRRect(borderRadius: BorderRadius.circular(20),
                  child: Container(
                    color: Colors.white,height: 60,width: 400,
                    child: Row(
                        children: [

                          Padding(
                            padding: const EdgeInsets.only(left: 20,top: 5),
                            child: Column(
                                children: [
                                  Row(
                                      children:[
                                        Icon(Icons.egg_rounded,size:15,),
                                        Text("25'C",style: TextStyle(fontSize:15),),
                                      ]),
                                  Text('Temperature',style: TextStyle(fontSize:10)),
                                ]),
                          ),
                          SizedBox(width: 40,),
                          Padding(
                            padding: const EdgeInsets.only(top: 5,left: 40),
                            child: Column(
                              children: [
                                Row(
                                    children:[
                                      Icon(Icons.egg_rounded,size: 15,),
                                      Text("57'C",style: TextStyle(fontSize:15)),
                                    ]),
                                Text('Humidity',style: TextStyle(fontSize:10)),
                              ],),
                          ),
                          SizedBox(width: 60,),
                          Padding(
                            padding: const EdgeInsets.only(top: 5,left:60),
                            child: Column(
                              children: [
                                Row(
                                    children:[
                                      Icon(Icons.egg_rounded,size: 15,),
                                      Text("80'C",style: TextStyle(fontSize:15)),
                                    ]),
                                Text('Lightining',style: TextStyle(fontSize:10))
                              ],),
                          ),
                        ]),
                  ),
                ),
                SizedBox(width: 30,),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Image(image: AssetImage("assets/images/graph.jpg"),height: 120,),
                )
              ],
            ),
          ),
          Positioned(
            width: 500,height: 400,
            top: 330,
            child: ClipRRect(borderRadius: BorderRadius.only(topRight: Radius.circular(30),topLeft: Radius.circular(30)),
              child: Container(
                color: Colors.grey,
                child: Column(
                  children: [
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Text("Devices"),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 390),
                          child: Icon(Icons.add),
                        )
                      ],
                    ),
                    SizedBox(height: 10,),
                    myDevices(),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  myDevices() {
    return Column(
      children: [
        Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(borderRadius: BorderRadius.circular(15),
                child: Container(
                  color: Colors.white,height: 120,width: 180,
                  child: Row(
                    children: [
                      Column(
                        children: [
                          SizedBox(height: 15,),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Icon(Icons.light),
                          ),
                          SizedBox(height: 10,),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text("Light"),
                          ),
                          SizedBox(height: 5,),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text("26 C"),
                          )
                        ],
                      ),

                      Padding(
                        padding: const EdgeInsets.only(bottom: 60,left:90),
                        child: Icon(Icons.add_circle_outline,size:15),
                      )
                    ],
                  ),
                )
            ),
            SizedBox(width: 15,),
            ClipRRect(borderRadius: BorderRadius.circular(15),
                child: Container(
                  color: Colors.white,height: 120,width: 180,
                  child: Row(
                    children: [
                      Column(
                        children: [
                          SizedBox(height: 15,),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Icon(Icons.ac_unit),
                          ),
                          SizedBox(height: 10,),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text("AC"),
                          ),
                          SizedBox(height: 5,),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text("18 C"),
                          )
                        ],
                      ),

                      Padding(
                        padding: const EdgeInsets.only(bottom: 60,left:90),
                        child: Icon(Icons.add_circle_outline,size:15),
                      )
                    ],
                  ),
                )
            ),
            SizedBox(width: 15,),
          ],
        ),
        SizedBox(height: 15,),
        Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(borderRadius: BorderRadius.circular(15),
                child: Container(
                  color: Colors.white,height: 120,width: 180,
                  child: Row(
                    children: [
                      Column(
                        children: [
                          SizedBox(height: 15,),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Icon(Icons.wifi),
                          ),
                          SizedBox(height: 10,),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text("Wi-Fi"),
                          ),
                          SizedBox(height: 5,),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text("On"),
                          )
                        ],
                      ),

                      Padding(
                        padding: const EdgeInsets.only(bottom: 60,left:90),
                        child: Icon(Icons.add_circle_outline,size:15),
                      )
                    ],
                  ),
                )
            ),
            SizedBox(width: 15,),
            ClipRRect(borderRadius: BorderRadius.circular(15),
                child: Container(
                  color: Colors.white,height: 120,width: 180,
                  child: Row(
                    children: [
                      Column(
                        children: [
                          SizedBox(height: 15,),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Icon(Icons.tv),
                          ),
                          SizedBox(height: 10,),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text("TV"),
                          ),
                          SizedBox(height: 5,),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text("On"),
                          )
                        ],
                      ),

                      Padding(
                        padding: const EdgeInsets.only(bottom: 60,left:90),
                        child: Icon(Icons.add_circle_outline,size:15),
                      )
                    ],
                  ),
                )
            ),
            SizedBox(width: 15,),
          ],
        ),
        SizedBox(height: 20,),
        ClipRRect(borderRadius: BorderRadius.circular(10),
          child: Container(
            color: Colors.brown,
            height: 40,width: 400,
            child: Center(child: Text("Turn of all devices",style: TextStyle(color: Colors.white),)),
          ),
        )

      ],
    );
  }

}