import 'package:flutter/material.dart';

import '16Callex.dart';

void main(){
  runApp(MaterialApp(home: tbbar(),debugShowCheckedModeBanner: false,));
}

class tbbar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 3,
      child: Scaffold(
        appBar: AppBar(backgroundColor: Colors.cyanAccent,
          title: Text("Tabs Demo"),
          // actions: [
          //   PopupMenuButton(itemBuilder: itemBuilder)
          // ],
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.call_made_sharp),
                text: "Calls",
              ),
              Tab(
                icon: Icon(Icons.call_missed_sharp),
                text: "Missed",
              ),
              Tab(
                icon: Icon(Icons.call_received_sharp),
                text: "Received",
              )

            ],
          ),
        ),
        body: TabBarView(children: [
          calls(),
          calls(),
          calls(),
        ],),
      ),
    );
  }

}