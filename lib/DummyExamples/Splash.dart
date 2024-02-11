import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:myflutterproject/24Carousel/carousel.dart';

import 'Login.dart';

// void main(){
//   runApp(MaterialApp(home: svg(),debugShowCheckedModeBanner: false,));
// }

class splash extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(

          // SvgPicture.asset('assets/svg/fullscreen.svg',),
          child: Column(
            children: [
              Text("Introduction"),
              CarouselSlider(
                  items: [
                    SvgPicture.asset('assets/svg/fullscreen.svg',),
                    SvgPicture.asset('assets/svg/svg2.svg',),
                    SvgPicture.asset('assets/svg/svg3.svg',),

                  ], options: CarouselOptions(
                aspectRatio: 2.0,
                enlargeCenterPage: true,
                enableInfiniteScroll: false,
                initialPage: 2,
                autoPlay: true,
              ),
              ),
              ElevatedButton(
                onPressed: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>loginpage()));
                },
                child: Text("Next"),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
                    foregroundColor: Colors.black),
              ),
            ],
          ),

        )
    );
  }

}