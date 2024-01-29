import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Carousel(),debugShowCheckedModeBanner: false,));
}
class Carousel extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: CarouselSlider(
          items: [
            Image(image: AssetImage("assets/images/profile.png")),
            Image(image: AssetImage("assets/images/profile1.png")),
            Image(image: AssetImage("assets/images/minion.png")),
          ],
          options: CarouselOptions(
            aspectRatio: 2.0,
            enlargeCenterPage: true,
            enableInfiniteScroll: false,
            initialPage: 2,
            autoPlay: true,
          )
        ),
      ),
    );
  }

}