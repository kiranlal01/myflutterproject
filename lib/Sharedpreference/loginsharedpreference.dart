import 'package:flutter/material.dart';
import 'package:myflutterproject/3Homescreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'home.dart';


void main(){
  runApp(MaterialApp(home: SharedPreference(),debugShowCheckedModeBanner: false,));
}

class SharedPreference extends StatefulWidget{
  @override
  State<SharedPreference> createState() => _SharedPreferenceState();
}

class _SharedPreferenceState extends State<SharedPreference> {
  late SharedPreferences data;
  TextEditingController username=TextEditingController();
  TextEditingController password=TextEditingController();
  late bool newuser;
  @override
  void initState(){
    checkuser();
    super.initState();
  }
  void checkuser() async {
    data = await SharedPreferences.getInstance();
    newuser = (data.getBool('newuser') ?? true);
    if (newuser == false) {
      Navigator.push(context, MaterialPageRoute(builder: (context) => SharedHome()));
    }
  }
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            SizedBox(height: 50,),
            Icon(Icons.person,size: 60,),
            SizedBox(height: 30,),
            TextField(
              controller: username,
              decoration: InputDecoration(
                labelText: "Username",
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
              ),
            ),
            SizedBox(height: 10,),
            TextField(
              controller: password,
              decoration: InputDecoration(
                labelText: "Password",
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(20))
              ),
            ),
            ElevatedButton(
              onPressed: () {
                String uname=username.text;
                String paswrd=password.text;
                if(uname!=''&& paswrd !=''){
                  print("login Success");
                  data.setString("username",uname);
                  data.setBool('newuser', false);
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>SharedHome()));
                }
              },
              child: Text("Login"),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.black),
            ),
          ],
        ),
      ),
    );
  }

 
  
}