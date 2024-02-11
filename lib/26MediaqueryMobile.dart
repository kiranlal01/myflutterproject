import 'package:flutter/material.dart';
void main (){
  runApp(MaterialApp(home: MyMobleBody(),
    debugShowCheckedModeBanner: false,));
}

class MyMobleBody extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[200],
      appBar: AppBar(
        title: const Text("mobile"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: AspectRatio(
                aspectRatio: 16/6,
                child: Container(
                  color: Colors.green[400],

                ),
              ),
            ),
            Expanded(
                child: ListView.builder(
                    itemCount:8,
                    itemBuilder: (context,index){
                      return Padding(
                        padding:const EdgeInsets.all(8.0),
                        child: Container(
                          color: Colors.blue[600],
                          height: 120,
                        ),
                      );

                    }))
          ],
        ),
      ),

    );
  }

}