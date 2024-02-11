import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'loginsharedpreference.dart';

class SharedHome extends StatefulWidget{
  @override
  State<SharedHome> createState() => _HomeState();
}

class _HomeState extends State<SharedHome> {
  late SharedPreferences data;
  late String username;
  @override
  void initState() {
    fetchhome();

    super.initState();
  }
  void fetchhome()async{
    data=await SharedPreferences.getInstance();
    setState(() {
      username=data.getString("username")!;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Center(child: Text("Home page")),
            ElevatedButton(onPressed: (){
              data.setBool('newuser',true);
              Navigator.push(context, MaterialPageRoute(builder: (context)=>SharedPreference()));
            }, child: Text("Logout"))
          ],
        ),
      ),
    );
  }
}