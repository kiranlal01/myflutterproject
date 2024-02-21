import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:toggle_switch/toggle_switch.dart';
void main(){
  runApp(MaterialApp(home: light(title: '',),));
}
class light  extends StatefulWidget{
  const light({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<light> createState() => _lightState();
}

class _lightState extends State<light> {
  int brightness = 10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
              height: 500,
              width: double.infinity,
              color: Colors.brown[200],
              child:Column(
                  children: [
                    SizedBox(height: 20,),
                    Row(mainAxisSize: MainAxisSize.min,
                      children: [
                        FaIcon(FontAwesomeIcons.backward, color: Colors.white,),
                        SizedBox(width: 200,),
                        Text('Light', style: TextStyle(color: Colors.white),),
                        SizedBox(width: 200,),
                      ],
                    ),
                    SizedBox(height: 50,),
                    Row(

                      children: [

                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Column(
                            children: [
                              Text('Power',style: TextStyle(color: Colors.white),),
                              SizedBox(height: 20,),
                              ToggleSwitch(
                                minWidth: 40.0,
                                cornerRadius: 20.0,
                                activeBgColors: [[Colors.white!], [Colors.orange!]],
                                activeFgColor: Colors.white,
                                inactiveBgColor: Colors.grey,
                                inactiveFgColor: Colors.white,
                                initialLabelIndex: 1,
                                totalSwitches: 2,
                                labels: ['', ''],
                                radiusStyle: true,
                                onToggle: (index) {
                                  print('switched to: $index');
                                },
                              ),
                              SizedBox(height: 30,),
                              Text('80%', style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 20),),
                              Text('Brightness', style: TextStyle(color: Colors.white),),

                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 60,),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Row(
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
                                      label: "",
                                      activeColor: Colors.white,
                                      value: brightness.toDouble(),
                                      onChanged: (value) {
                                        setState(() {
                                          brightness = value.toInt();
                                        });
                                      },
                                      min: 5,
                                      max: 100,
                                    ),
                                  ]
                              ),
                            ),
                            Icon(Icons.light_mode_outlined,color: Colors.white,),
                          ]
                      ),
                    )
                  ])

          ),
          Padding(
              padding: const EdgeInsets.only(top: 400),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Container(
                      width: double.infinity,
                      color: Colors.grey[300],
                      child: Column(children: [

                        Row(mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10,left: 10),
                              child: Text('Shedule',style: TextStyle(fontWeight: FontWeight.w800,fontSize: 18),),
                            ),
                            SizedBox(width: 380),
                            Padding(
                              padding: const EdgeInsets.only(top: 10,right: 10),
                              child: Icon(Icons.add,color: Colors.grey[500],),
                            )
                          ],
                        ),
                        SizedBox(height: 20,),
                        Row(mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(height: 10,),
                            Text("From"),
                            SizedBox(width: 40,),
                            Text("6 : 00 PM",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                            SizedBox(width:40,),
                            Text("To"),
                            SizedBox(width: 40,),
                            Text("11 : 00 PM",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                            SizedBox(width: 60,),
                            Icon(Icons.delete,color: Colors.grey[500],),
                            SizedBox(width: 20,),
                            Icon(Icons.edit_note,color: Colors.grey[500],)

                          ],
                        )
                      ])))),
          Padding(
              padding: const EdgeInsets.only(top: 500),
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Container(
                      width: double.infinity,
                      color: Colors.white,
                      child: Column(children: [
                        SizedBox(height: 40,),
                        Row(mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10,left: 10),
                              child: Text('Usage Today',style: TextStyle(fontSize: 18),),
                            ),
                            SizedBox(width: 310),
                            Padding(
                              padding: const EdgeInsets.only(top: 10,right: 10),
                              child: Text('0.5 kwH',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                            )
                          ],
                        ),
                        SizedBox(height: 20,),
                        Row(mainAxisSize: MainAxisSize.min,
                          children: [
                            Text('Usage this month',style: TextStyle(fontSize: 18),),
                            SizedBox(width: 300),
                            Text('6 kwH',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)
                          ],
                        ),
                        SizedBox(height: 20,),
                        Row(mainAxisSize: MainAxisSize.min,
                          children: [
                            Text('Total working hours',style: TextStyle(fontSize: 18),),
                            SizedBox(width: 300),
                            Text('125',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)
                          ],
                        ),
                      ]))))
          ,
          Positioned(top:0,right:10,child: Image(image: AssetImage('assets/images/lamp.png')))],
      ),
    );
  }
}