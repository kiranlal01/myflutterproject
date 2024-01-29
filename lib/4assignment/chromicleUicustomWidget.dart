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
            Container(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    ProfileTile(txt: "privacy",icon: Icon(Icons.privacy_tip,color: Colors.black,),),
                    ProfileTile(txt: "Purchase History",icon: Icon(Icons.history,color: Colors.black,),),
                    ProfileTile(txt: "Help&Support",icon: Icon(Icons.help,color: Colors.black,),),
                    ProfileTile(txt: "Settings",icon: Icon(Icons.settings,color: Colors.black,),),
                    ProfileTile(txt: "Invite Friend",icon: Icon(Icons.group_add_rounded,color: Colors.black,),),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}


class ProfileTile extends StatelessWidget{

  const ProfileTile({
    Key? key,
    required this.txt,
    required this.icon,
  }) : super(key: key);

  final String txt;
  final Icon icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey
      ),
      child: ListTile(
        title: Text(
          txt,
          style: const TextStyle(fontSize: 16,fontWeight: FontWeight.w500),
        ),
        leading: icon,
        trailing: const Icon(
          Icons.arrow_forward_ios,
          color: Colors.black,
        ),
      ),
    );
  }

}