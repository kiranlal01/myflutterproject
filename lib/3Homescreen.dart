import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: Home(),
      useInheritedMediaQuery:true,debugShowCheckedModeBanner: false));
}

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool showpass=true;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(color: Colors.black,
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Text("Login Page",style: TextStyle(fontSize: 50,color: Colors.blue),),
            Padding(
              padding: const EdgeInsets.only(left:60,right: 60,bottom: 20,top: 60),
              child: TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                    hintText: "username",
                    labelText: "Name"
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:60,right: 60,bottom: 10,top: 30),
              child: TextField(
                obscureText: showpass,//true,
                obscuringCharacter: '*',
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.password),
                    suffixIcon: IconButton(onPressed: (){
                      setState(() {
                        if(showpass){
                          showpass=false;
                        }
                        else{
                          showpass=true;
                        }
                      });
                    }, icon: Icon(showpass==true ? Icons.visibility_off: Icons.visibility)),//Icon(Icons.visibility_off),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(30)),
                    hintText: "password",
                    labelText: "pwd"
                ),
              ),
            ),
            ElevatedButton(onPressed: () {}, child: Text("Login"),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green,foregroundColor: Colors.black) ,
            ),
            TextButton(
                onPressed: () {},
                child: Text("Not a user ! create a new account"))
          ],
        ),
      ),
    );
  }
}