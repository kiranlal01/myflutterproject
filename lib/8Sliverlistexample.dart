import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: slivers(),debugShowCheckedModeBanner: false,));
}

class slivers extends StatelessWidget{
  var name=["Ace","King","Jack","Queen","Prince","Zoro"];
  var color=[900,800,700,600,500,400];
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: CustomScrollView(
          slivers: [
            SliverAppBar(
              floating: true,
              pinned: true,
              title: const Text("Custom AppBar"),
              actions: [
                IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_bag)),
                IconButton(onPressed: () {}, icon: const Icon(Icons.favorite))
              ],
              bottom: AppBar(
                elevation: 0,
                title: Container(
                  height: 40,
                  width: double.infinity,
                  color: Colors.white,
                  child: const TextField(
                    decoration: InputDecoration(
                        hintText: "Search Your Products",
                        prefixIcon: Icon(Icons.search),
                        suffixIcon: Icon(Icons.camera_alt)
                    ),
                  ),
                ),
              ),
            ),
            SliverList(delegate: SliverChildBuilderDelegate((context,index){
              return Card(color: Colors.blue[color[index]],
                // child: ListTile(
                //   title: Text("${name[index]}"),
                // ),
                child: Container(height: 100,
                  child: Text("${name[index]}"),
                ),
              );
            },childCount: color.length))
          ]
      ),
    );
  }

}