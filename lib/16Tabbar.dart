import 'package:flutter/material.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

import '14Staggeredgridtile.dart';
import '15Drawer.dart';

void main() {
  runApp(MaterialApp(
    home: tabbar(),
    debugShowCheckedModeBanner: false,
  ));
}

class tabbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text("tabbar"),
          actions: [
            PopupMenuButton(itemBuilder: (context) {
              return [
                PopupMenuItem(child: Text("Settings")),
                PopupMenuItem(child: Text("Logout")),
                PopupMenuItem(child: Text("Invite"))
              ];
            })
          ],
          bottom: TabBar(
            indicatorColor: Colors.black,
            labelColor: Colors.yellow,
            unselectedLabelColor: Colors.green,
            tabs: [
              Tab(
                text: "chat",
                //child: Text("chat"),
              ),
              Tab(
                text: "status",
              ),
              Tab(
                text: "contact",
              ),
              Tab(
                icon: FaIcon(FontAwesomeIcons.whatsapp),
                child: Text("whatsapp",
                    style: GoogleFonts.lato(
                        fontSize: 10,
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.italic)),
              )
            ],
          ),
        ),
        body: TabBarView(
           children: [Stggered(), drower()],
        ),
      ),
    );
  }
}