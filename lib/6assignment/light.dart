import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:toggle_switch/toggle_switch.dart';

void main(){
  runApp(MaterialApp(home: Light(),debugShowCheckedModeBanner: false,));
}

class Light extends StatefulWidget{
  @override
  State<Light> createState() => _LightState();
}

class _LightState extends State<Light> {
  double _currentSliderValue = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.brown,
            height: double.infinity,width: double.infinity,
              child:
                    Column(
                        children: [
                          SizedBox(height: 20,),
                          Row(mainAxisSize: MainAxisSize.min,
                            children: [
                              Icon(Icons.arrow_back,color: Colors.white),
                              SizedBox(width: 160,),
                              Text('Light', style: TextStyle(color: Colors.white,fontSize:20),),
                              SizedBox(width: 200,),
                            ],
                          ),
                          Row(
                            children: [
                              Column(
                                children: [
                                  SizedBox(height: 30,),
                                  Text('Power',style:TextStyle(color: Colors.white,fontSize: 20)),
                                  SizedBox(height: 20,),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: ToggleSwitch(
                                      minWidth: 40.0,
                                      cornerRadius: 20.0,
                                      activeBgColors: [[Colors.white!], [Colors.orange!]],
                                      activeFgColor: Colors.white,
                                      inactiveBgColor: Colors.white,
                                      inactiveFgColor: Colors.white,
                                      initialLabelIndex: 1,
                                      totalSwitches: 2,
                                      labels: ['', ''],
                                      radiusStyle: true,
                                      onToggle: (index) {
                                        print('switched to: $index');
                                      },
                                    ),
                                  ),
                                  SizedBox(height: 40,),
                                  Text('80%',style: TextStyle(color: Colors.white,fontSize: 20),),
                                  SizedBox(height: 10,),
                                  Text('Brightness',style: TextStyle(color: Colors.white),),
                                  SizedBox(height: 20,),

                                ],
                              )
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 420,top: 10),
                            child: Text("Intensity",style: TextStyle(color: Colors.white),),
                          ),
                          Row(mainAxisAlignment: MainAxisAlignment.center,
                              children: [

                                Icon(Icons.light_mode_outlined,color: Colors.white,),
                                Container(
                                  height: 100,
                                  width:400,
                                  child: Column(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      children: [

                                        Slider(
                                          value: _currentSliderValue,
                                                      max: 100,
                                                      divisions: 6,
                                                      label: _currentSliderValue.round().toString(),
                                                      onChanged: (double value) {
                                                        setState(() {
                                                          _currentSliderValue = value;
                                                        });
                                                      },
                                        ),
                                      ]
                                  ),
                                ),
                                Icon(Icons.light_mode_outlined,color: Colors.white,),
                              ]
                          )
                        ]),


            // child: Column(
            // children: [
            //   Row(
            //     children: [
            //       SizedBox(height: 100,width:30),
            //       Icon(Icons.arrow_back,color: Colors.white,),
            //       SizedBox(width: 170,),
            //       Text("Light",style: TextStyle(color: Colors.white),),
            //
            //     ],
            //   ),
            //  SizedBox(height: 20,width:30),
            //  Text("Power",style: TextStyle(color: Colors.white),),
            //  SizedBox(height: 10,),
            //  Icon(Icons.smart_button,color: Colors.white),
            //  SizedBox(height: 20,),
            //  Text("80%",style: TextStyle(fontSize: 20,color: Colors.white),),
            //  SizedBox(height: 10,),
            //  Text("Brightness",style: TextStyle(color: Colors.white),),
            //  SizedBox(height: 20,),
            //  Text("Intensity",style: TextStyle(color: Colors.white),),
            //  SizedBox(height: 10,),
            //   Row(
            //     children: [
            //       Icon(Icons.light_mode_outlined),
            //       SizedBox(width: 10,),
            //       Slider(
            //         value: _currentSliderValue,
            //         max: 100,
            //         divisions: 6,
            //         label: _currentSliderValue.round().toString(),
            //         onChanged: (double value) {
            //           setState(() {
            //             _currentSliderValue = value;
            //           });
            //         },
            //       ),
            //       SizedBox(width: 10,),
            //       Icon(Icons.light_mode),
            //     ],
            //   ),
            // ],
            //               ),
          ),
          Positioned(
            width: 500,height: 400,
            top: 400,
            child: ClipRRect(borderRadius: BorderRadius.only(topRight: Radius.circular(30),topLeft: Radius.circular(30)),
              child: Container(
                color: Colors.grey,
                child: Column(
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 70,),
                        Text("Schedule",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18)),
                        SizedBox(width: 360,),
                        Icon(Icons.add)
                      ],
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 20,),
                        Text("From"),
                        SizedBox(width: 40,),
                        Text("6:00 pm",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 18),),
                        SizedBox(width: 40,),
                        Text("To"),
                        SizedBox(width: 40,),
                        Text("11:00 pm",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 18),),
                        SizedBox(width: 60,),
                        Icon(Icons.delete),
                        SizedBox(width: 20,),
                        Icon(Icons.edit_note)

                      ],
                    )
                  ],
                ),

              ),
            ),
          ),
          Positioned(
            width: 500,height: 400,
            top: 520,
            child: ClipRRect(borderRadius: BorderRadius.only(topRight: Radius.circular(30),topLeft: Radius.circular(30)),
              child: Container(
                color: Colors.white,
                child: Column(
                  children: [
                    SizedBox(height: 40,),
                    Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10,left: 10),
                          child: Text("Usage Today"),
                        ),
                        SizedBox(width: 340,),
                        Padding(
                          padding: const EdgeInsets.only(top: 10,left: 10),
                          child: Text("0.5 kwH",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                        )
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Usage This Month"),
                        SizedBox(width: 330,),
                        Text("6 kwH",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Total Working Hours"),
                        SizedBox(width: 330,),
                        Text("125",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),)
                      ],
                    ),

                  ],
                ),

              ),
            ),
          ),
          Positioned(
              top:0,right: 10,
              child: Image(image: AssetImage("assets/images/lamp.png"))),
        ],
      ),
    );
  }
}