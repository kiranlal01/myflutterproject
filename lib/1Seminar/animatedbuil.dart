// import 'package:flutter/material.dart';
//
// void main(){
//   runApp(MaterialApp(home: AnimatedBuilder(),debugShowCheckedModeBanner: false,));
// }
//
// class AnimatedBuilder extends StatefulWidget{
//   @override
//   State<AnimatedBuilder> createState() => _AnimatedBuilderState();
// }
//
// class _AnimatedBuilderState extends State<AnimatedBuilder> {
//   late AnimationController controller;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold();
//   }
// }

// const AnimatedBuilder
// (
// {
//
// Key
// key
// ,
//
// @required
// Listenable
// animation
// ,
//
// @required this.builder,
//
// this.child,
//
// })
//
//
//
// super.dispose();
//
// }

import 'dart:math' as math;

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Woolha.com Flutter Tutorial',
      home: _AnimatedWidgetExample(),
    );
  }
}


class _AnimatedWidgetExample extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new _AnimatedWidgetExampleState();
}

class _AnimatedWidgetExampleState extends State<_AnimatedWidgetExample>
    with TickerProviderStateMixin {
  late AnimationController _controller;

  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 5),
      vsync: this,
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Woolha.com Flutter Tutorial'),
      ),
      body: Center(
        child: AnimatedBuilder(
          animation: _controller,
          child: Container(
            width: 200.0,
            height: 200.0,
            color: Colors.teal,
            child: const Center(
              child: Text(
                'Woolha.com',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 24,
                ),
              ),
            ),
          ),
          builder: (BuildContext context, Widget? child) {
            return Transform.rotate(
              angle: _controller.value * 2 * math.pi,
              child: child,
            );
          },
        ),
      ),
    );
  }
}
