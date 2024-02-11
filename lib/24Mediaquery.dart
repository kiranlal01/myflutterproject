import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: destop(),
    debugShowCheckedModeBanner: false,));
}

class destop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("desktop"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: AspectRatio(
                        aspectRatio: 16 / 6,
                        child: Container(
                          height: MediaQuery.of(context).size.height,
                          width: MediaQuery.of(context).size.width,
                          color: Colors.deepPurple[400],
                        ),
                      ),
                    ),
                    Expanded(
                        child:ListView.builder(
                          itemCount: 8,
                          itemBuilder: (context,index){
                            return Padding(padding: const EdgeInsets.all(8.0),
                              child: Container(
                                color: Colors.deepPurple[300],
                                height: MediaQuery.of(context).size.height,

                              ),
                            );
                          },
                        ))
                  ],
                )
            ),
            Padding(padding: const EdgeInsets.all(8.0),
              child: Container(
                width: 90,
                color: Colors.deepPurple[300],

              ),)
          ],
        ),
      ),
    );
  }
}