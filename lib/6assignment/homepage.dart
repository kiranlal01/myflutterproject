

import 'package:flutter/material.dart';


void main(){
  runApp(MaterialApp(home: HomePage(),debugShowCheckedModeBanner: false,));
}

class HomePage extends StatelessWidget{
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
                    Icon(Icons.menu,color: Colors.white,),
                    SizedBox(width: 145,),
                    Text("Control Panel",style: TextStyle(color: Colors.white),),
                    SizedBox(width: 145,),
                    Icon(Icons.notifications,color: Colors.white,)
                  ],
                ),
                Row(
                  children: [
                    SizedBox(height: 50,width: 60,),
                    Column(
                      children: [
                        Icon(Icons.cloud,color: Colors.white,),
                        SizedBox(height: 20,),
                        Text("this is cloud",style: TextStyle(color: Colors.white),)
                      ],
                    ),
                    SizedBox(width: 80,),
                    Column(
                      children: [
                        Text("29 C",style: TextStyle(color: Colors.white),),
                        SizedBox(height: 20,),
                        Text("temperature",style: TextStyle(color: Colors.white),)
                      ],
                    ),
                    SizedBox(width: 80,),
                    Column(
                      children: [
                        Text("25 C",style: TextStyle(color: Colors.white),),
                        SizedBox(height: 20,),
                        Text("temperature",style: TextStyle(color: Colors.white),)
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          Positioned(
            width: 500,height: 700,
            top: 200,
            child: ClipRRect(borderRadius: BorderRadius.only(topRight: Radius.circular(30),topLeft: Radius.circular(30)),
              child: Container(
                color: Colors.white,
                child: Column(
                  children: [
                    SizedBox(height: 30,),
                    ClipRRect(borderRadius: BorderRadius.circular(20),
                      child: Container(
                        color: Colors.grey,height: 90,width: 460,
                        child: Row(mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(right: 20),
                              child: Icon(Icons.charging_station,size: 30,),
                            ),
                            SizedBox(width: 10,),
                            Padding(
                              padding: const EdgeInsets.only(right: 40),
                              child: Column(
                                children: [
                                  SizedBox(height: 20,),
                                  Text("29.5"),
                                  Text("temp"),
                                ],
                              ),
                            ),
                            SizedBox(width: 10,),
                            Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Icon(Icons.light,size: 30,),
                            ),
                            SizedBox(width: 10,),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Column(
                                children: [
                                  SizedBox(height: 20,),
                                  Text("29.5"),
                                  Text("temp"),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),

              ),
            ),

          ),
          Positioned(
              width: 500,height: 380,
              top: 350,
              child: ClipRRect(borderRadius: BorderRadius.only(topRight: Radius.circular(30),topLeft: Radius.circular(30)),
                  child: Container(color: Colors.grey,
                  child: Column(
                    children: [
                      SizedBox(height:10,),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text("Scenes"),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 390),
                            child: Icon(Icons.add),
                          )
                        ],
                      ),
                      SizedBox(height: 10,),
                      myScenes(),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text("Rooms"),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 390),
                            child: Icon(Icons.add),
                          )
                        ],
                      ),
                      SizedBox(height: 10,),
                      myRooms(),
                    ],
                  ),
                  )
              )
          )
        ],
      ),
    );
  }

  myScenes() {
    return Row(mainAxisAlignment: MainAxisAlignment.center,
      children: [

        ClipRRect(borderRadius: BorderRadius.circular(20),
          child: Container(color: Colors.brown,height: 80,width: 80,
            child: Center(
              child: Column(
                children: [
                  SizedBox(height: 20,),
                  Icon(Icons.home,color: Colors.white,),
                  Text("Home",style: TextStyle(color: Colors.white),)
                ],
              ),
            ),
          ),
        ),
        SizedBox(width: 30,),
        ClipRRect(borderRadius: BorderRadius.circular(20),
          child: Container(color: Colors.white,height: 80,width: 80,
            child: Center(
              child: Column(
                children: [
                  SizedBox(height: 20,),
                  Icon(Icons.door_back_door_outlined),
                  Text("Door")
                ],
              ),
            ),
          ),
        ),
        SizedBox(width: 30,),
        ClipRRect(borderRadius: BorderRadius.circular(20),
          child: Container(color: Colors.white,height: 80,width: 80,
            child: Center(
              child: Column(
                children: [
                  SizedBox(height: 20,),
                  Icon(Icons.nightlight_outlined),
                  Text("Sleep")
                ],
              ),
            ),
          ),
        ),
        SizedBox(width: 30,),
        ClipRRect(borderRadius: BorderRadius.circular(20),
          child: Container(color: Colors.white,height: 80,width: 80,
            child: Center(
              child: Column(
                children: [
                  SizedBox(height: 20,),
                  Icon(Icons.access_alarm),
                  Text("Alarm")
                ],
              ),
            ),
          ),
        ),
        SizedBox(width: 10,),


      ],
    );
  }

  myRooms() {
    return Row(mainAxisAlignment: MainAxisAlignment.center,
      children: [

        ClipRRect(borderRadius: BorderRadius.circular(10),
            child: Container(
              color: Colors.white,height: 180,width: 200,
              child: Column(
                children: [
                  SizedBox(height: 20,),
                  Image(image: AssetImage("assets/images/soffa.jpg"),height: 100,width: 150,),
                  SizedBox(height: 10,),
                  Text("Living Room"),
                  SizedBox(height: 3,),
                  Text("asdfghjsdfg",style: TextStyle(fontSize: 5),)
                ],
              ),
            )
        ),
        SizedBox(width: 20,),
        ClipRRect(borderRadius: BorderRadius.circular(10),
            child: Container(
              color: Colors.white,height: 180,width: 200,
              child: Column(
                children: [
                  SizedBox(height: 20,),
                  Image(image: AssetImage("assets/images/beddd.jpg"),height: 100,width: 150,),
                  SizedBox(height: 10,),
                  Text("Bedroom"),
                  SizedBox(height: 3,),
                  Text("qwertyuiity",style: TextStyle(fontSize: 5),)
                ],
              ),
            )
        ),
        SizedBox(width: 5,),
        // ClipRRect(borderRadius: BorderRadius.circular(10),
        //     child: Container(color: Colors.white,height: 120,width: 120,)),
        // SizedBox(width: 5,),
        // ClipRRect(borderRadius: BorderRadius.circular(10),
        //     child: Container(color: Colors.white,height: 120,width: 120,)),
        // SizedBox(width: 5,),


      ],
    );
  }

}
// child: Column(
// children: [
// Text("Scenes"),
// Row(
// children: [
// Container(color: Colors.blueAccent,height: 50,width: 50,),
// SizedBox(width: 5,),
// Container(color: Colors.blueAccent,height: 50,width: 50,),
// SizedBox(width: 5,),
// Container(color: Colors.blueAccent,height: 50,width: 50,),
// SizedBox(width: 5,),
// Container(color: Colors.blueAccent,height: 50,width: 50,),
// SizedBox(width: 5,),
// Container(color: Colors.blueAccent,height: 50,width: 50,),
// SizedBox(width: 5,),
// ],
// ),
// Text("Rooms"),
// Row(
// children: [
// Container(color: Colors.blueAccent,height: 50,width: 50,),
// SizedBox(width: 5,),
// Container(color: Colors.blueAccent,height: 50,width: 50,),
// SizedBox(width: 5,),
// Container(color: Colors.blueAccent,height: 50,width: 50,),
// SizedBox(width: 5,),
// Container(color: Colors.blueAccent,height: 50,width: 50,),
// SizedBox(width: 5,),
// Container(color: Colors.blueAccent,height: 50,width: 50,),
// SizedBox(width: 5,),
// ],
// ),
// ],
// ),