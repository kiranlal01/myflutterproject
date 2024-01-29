import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main(){
  runApp(MaterialApp(home: chromicle(),debugShowCheckedModeBanner: false,));
}

class chromicle extends StatelessWidget{
  var det =[Icons.privacy_tip,Icons.history,Icons.help,Icons.settings,Icons.group_add];
  var menu=["Privacy","Purchase History","Help&Support","Settings","Invite a friend"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              leading: Icon(Icons.arrow_back),
              trailing: Icon(Icons.menu),
            ),
            SizedBox(height: 30,),

            Center(
              child: Container(height: 150,width: 150,
                  child: CircleAvatar(backgroundImage: AssetImage("assets/images/3assign/lady2.png") )),
            ),
            SizedBox(height:30),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FaIcon(FontAwesomeIcons.facebook,color: Colors.indigo,),
                SizedBox(width: 10,),
                FaIcon(FontAwesomeIcons.google,color: Colors.red,),
                SizedBox(width: 10,),
                FaIcon(FontAwesomeIcons.twitter,color: Colors.lightBlue,),
                SizedBox(width: 10,),
                FaIcon(FontAwesomeIcons.linkedin,color: Colors.indigoAccent),
              ],
            ),
            SizedBox(height: 10,),
            Text("chromicle",style: TextStyle(fontSize: 25,fontWeight: FontWeight.w900),),
            Text("@amFOSS"),
            SizedBox(height: 20,),
            Text("Mobile App Developer and Open",style: TextStyle(fontSize: 20),),
            Text("source enthusiastic",style: TextStyle(fontSize: 20),),

            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.only(left: 50,right: 50),
              child: SizedBox(height: 300,
                child: ListView.builder(itemBuilder: (context,index){
                  return ListTile(
                    // dense:true,
                    leading: Icon(det[index]),
                        title: Text("${menu[index]}"),
                        trailing: Icon(Icons.arrow_forward_ios),
                  );
                },itemCount: menu.length,),
              ),
            )
          ],
        ),
      ),
    );
  }

}