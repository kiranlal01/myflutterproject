import 'package:flutter/material.dart';
import 'package:myflutterproject/sql%20lite/sqlhelper.dart';

void main(){
  runApp(MaterialApp(home: SqlMain(),debugShowCheckedModeBanner: false,));
}
class SqlMain extends StatefulWidget{
  @override
  State<SqlMain> createState() => _SqlMainState();
}

class _SqlMainState extends State<SqlMain> {
  bool isLoading=true;
  List<Map<String, dynamic>> note_from_db = [];  //to store data from sqflite

  @override
  void initState() {
    // refreshing the ui
    refreshData();
    super.initState();
  }

  void refreshData() async {
    final datas = await SQLHelper.readNotes(); //read data from sqflite
    setState(() {
      note_from_db = datas;
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("my notes"),),
      body: isLoading
        ? const Center(child: CircularProgressIndicator()):ListView.builder(itemBuilder: (context,index){
         return Card(
           child: ListTile(
             title: Text("${note_from_db[index][title]}"),
             subtitle: Text("${note_from_db[index][note]}"),
             trailing: SizedBox(
               width: 100,
               child: Row(
                 children: [
                   IconButton(onPressed: () {
                     showForm(note_from_db[index]["id"]);
                   },
                   icon: Icon(Icons.edit)),
                   // IconButton(onPressed: () {
                   //   deletNote(note_from_db[index]["id"]);
                   // },
                   // icon: Icon(Icons.delete)),

                 ],
               ),
             ),
           ),
         );
      },itemCount: note_from_db.length,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () =>showForm(null),
        child: const Icon(Icons.add),
      ),
    );
  }

  final title = TextEditingController();
  final note = TextEditingController();

  void showForm(int? id) async {

    showModalBottomSheet(
      context: context,

      isScrollControlled: true,
      builder: (context)=>Container(
        child: Column(
          children: [
            TextField(decoration: InputDecoration(
              hintText: 'title',
              border: OutlineInputBorder()
            ),
            ),
            TextField(decoration: InputDecoration(
              helperText: 'note',
              border: OutlineInputBorder()
            ),
            ),
            ElevatedButton(onPressed: () async {
              if (id == null) {
                await addNote();
              }
              title.text = "";
              note.text = "";
              Navigator.of(context).pop();
            },
                child: Text(id==null ? 'ADD NOTE' : "UPDATE")
            )
          ],
        ),
      )
    );
  }

  Future addNote() async {
    await SQLHelper.createNote(title.text, note.text);
    refreshData();
  }



}