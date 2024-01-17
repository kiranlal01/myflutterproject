import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
      isToolbarVisible: true,
      builder: (BuildContext context) => MaterialApp(
          useInheritedMediaQuery:true,debugShowCheckedModeBanner: false,
          home: SampleUi())));
}

class SampleUi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("sample page"),
        foregroundColor: Colors.blue,
        backgroundColor: Colors.black,
      ),
      body: Container(color: Colors.black12,height:double.infinity,width: double.infinity,
        // decoration: BoxDecoration(
        //   gradient: LinearGradient(
        //     colors: [
        //       Colors.red,
        //       Colors.yellow,
        //       Colors.blue,
        //     ],
        //     begin: Alignment.centerRight,
        //     end:Alignment.bottomCenter
        //   ),
        // ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(Icons.ac_unit_sharp,size:100,color: Colors.black,),
            Text("flutter",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 50,
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.italic)),
          ],
        ),
      ),
    );
  }
}