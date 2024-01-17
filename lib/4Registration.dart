import 'package:flutter/material.dart';

import '4Loginwithvalidation.dart';



// void main() {
//   runApp(MaterialApp(
//       home: Registration(),
//       useInheritedMediaQuery: true,
//       debugShowCheckedModeBanner: false));
//}

class Registration extends StatelessWidget{
  GlobalKey<FormState> formkey= GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Form(
          key: formkey,
          child: Column(
            children: [
              SizedBox(
                height: 70,
              ),
              Center(child: Text("Create an account")),
              Padding(
                padding:  EdgeInsets.only(left: 60, right: 60, bottom: 20, top: 60),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "name",
                    labelText: "name",
                    prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)
                    ),
                  ),
                  validator: (name){
                    if(name!.isEmpty){
                      return "Enter a valid name";
                    }
                    else{
                      return null;
                    }
                  },
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(left: 60, right: 60, bottom: 20, top: 30),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "emailid",
                    labelText: "emaiid",
                    prefixIcon: Icon(Icons.person),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)
                    ),
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
                padding:  EdgeInsets.only(left: 60, right: 60, bottom: 20, top: 30),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: "password",
                    prefixIcon: Icon(Icons.password),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)
                    ),
                  ),
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
                    Navigator.push(context,MaterialPageRoute(builder: (context)=>loginpage()));
                  }
                },
                child: Text("create account"),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.black),
              ),

            ],
          ),
        ),
      ),
    );
  }

}