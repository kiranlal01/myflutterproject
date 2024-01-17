import 'package:flutter/material.dart';
import '4Homepage.dart';
import '4Registration.dart';

void main() {
  runApp(MaterialApp(
      home: loginpage(),
      debugShowCheckedModeBanner: false));
}

class loginpage extends StatefulWidget {
  @override
  State<loginpage> createState() => _loginpageState();
}

class _loginpageState extends State<loginpage> {

  GlobalKey<FormState> formkey=GlobalKey();
  bool showpass = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.lightBlue,
        child: Form(
          key: formkey,
          child: Column(
            children: [
              SizedBox(
                height: 70,
              ),
              Center(
                  child: Icon(
                    Icons.person,
                    size: 100,
                    color: Colors.black,
                  )),
              Padding(
                padding:
                EdgeInsets.only(left: 60, right: 60, bottom: 20, top: 60),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "username",
                    labelText: "name",
                    prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)),
                  ),
                  validator: (username){
                    if(username!.isEmpty || !username.contains("@") || !username.contains("")){
                      return "Enter a valid username";
                    }
                    else{
                      return null;
                    }
                  },
                ),
              ),
              Padding(
                padding:
                EdgeInsets.only(left: 60, right: 60, bottom: 10, top: 30),
                child: TextFormField(
                  obscureText: showpass, //true,
                  obscuringCharacter: '*',
                  decoration: InputDecoration(
                      prefixIcon: Icon(Icons.password),
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              if (showpass) {
                                showpass = false;
                              } else {
                                showpass = true;
                              }
                            });
                          },
                          icon: Icon(showpass == true
                              ? Icons.visibility_off
                              : Icons.visibility)),
                      //Icon(Icons.visibility_off),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30)),
                      hintText: "password",
                      labelText: "pwd"),
                  validator: (password){
                    if(password!.isEmpty || password.length<8){
                      return "Enter valid password";
                    }
                    else{
                      return null;
                    }
                  },
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  final valid=formkey.currentState!.validate();
                  if(valid){
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>Homepage()));
                  }
                },
                child: Text("Login"),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.black),
              ),
              TextButton(
                  onPressed: () {
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>Registration()));

                  },
                  child: Text("Not a user ! create a new account")),
            ],
          ),
        ),
      ),
    );
  }
}