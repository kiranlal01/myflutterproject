import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
const List<String> list = <String>["one","two","three","four","five"];
void main(){
  runApp(MaterialApp(home: dropdown(),debugShowCheckedModeBanner: false,));
}



class dropdown extends StatefulWidget{
  @override
  State<dropdown> createState() => _dropdownState();
}

class _dropdownState extends State<dropdown> {
  String dropdownValue = list.first;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DropdownButton<String>(
        value: dropdownValue,
        icon: const Icon(Icons.arrow_downward),
        elevation: 2,
        style: const TextStyle(color: Colors.black),
        underline: Container(
          height: 2,
          color: Colors.purpleAccent,
        ),
        onChanged: (String? value){
          setState((){
            dropdownValue = value!;
          });
          },
        items: list.map<DropdownMenuItem<String>>((String drop){
          return DropdownMenuItem<String>(
          value:drop,
              child: Text(drop));
    }).toList(),
      ),
    );
  }
}