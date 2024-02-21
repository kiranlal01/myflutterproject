import 'package:flutter/material.dart';
import 'package:myflutterproject/sql%20lite/sqlhelper.dart';


void main() {
  runApp(MaterialApp(
    home: MainSQL(),
  ));
}

class MainSQL extends StatefulWidget {

  @override
  State<MainSQL> createState() => _MainSQLState();
}

class _MainSQLState extends State<MainSQL> {
  bool isLoading = true;
  List<Map<String, dynamic>> note_from_db = []; //to store data from sqflite

  @override
  void initState() {
    // refreshing the ui
    refreshData();
    super.initState();
  }

  void refreshData() async {
    final datas = await SQLHelper.readNotes(); // read data from sqflite
    setState(() {
      note_from_db = datas; // add the datas read from sqflite into empty list
      isLoading = false;
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("MyNotes"),
      ),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          :
      ListView.builder(

          itemCount: note_from_db.length,

          itemBuilder: (context, index) {
            return Card(
              child: ListTile(

                title: Text("${note_from_db[index]['title']}"),
                subtitle: Text(note_from_db[index]['note']),
                trailing: SizedBox(
                  width: 100,
                  child: Row(
                    children: [
                      IconButton(
                          onPressed: () {
                            showForm(note_from_db[index]['id']);
                          },
                          icon: const Icon(Icons.edit)),
                      IconButton(
                          onPressed: () {
                            deleteNote(note_from_db[index]['id']);
                          },
                          icon: const Icon(Icons.delete)),
                    ],
                  ),
                ),
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () =>showForm(null),
        child: const Icon(Icons.add),
      ),
    );
  }

  final title = TextEditingController();
  final note = TextEditingController();

  void showForm(int? id) async {
    if (id != null) {
      final existingNote = note_from_db.firstWhere((note) => note['id'] == id);
      title.text = existingNote['title'];
      note.text = existingNote['note'];
    }

    showModalBottomSheet(
        context: context,

        isScrollControlled: true,
        builder: (context) => Container(
          padding: EdgeInsets.only(
              left: 10,
              right: 10,
              top: 10,
              bottom: MediaQuery.of(context).viewInsets.bottom + 120),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              TextField(
                controller: title,
                decoration: const InputDecoration(
                    hintText: "Title", border: OutlineInputBorder()),
              ),
              const SizedBox(
                height: 10,
              ),
              TextField(
                controller: note,
                decoration: const InputDecoration(
                    hintText: "Enter note", border: OutlineInputBorder()),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () async {
                  if (id == null) {
                    await addNote();
                  }
                  if (id != null) {
                    await updateNote(id);
                  }
                  title.text = "";
                  note.text = "";
                  Navigator.of(context).pop();
                },
                child: Text(id == null ? 'ADD NOTE' : "UPDATE"),
              )
            ],
          ),
        ));
  }

  Future addNote() async {
    await SQLHelper.createNote(title.text, note.text);
    refreshData();
  }

  Future<void> updateNote(int id) async {
    await SQLHelper.updateNote(id, title.text, note.text);
    refreshData();
  }



  void deleteNote(int id) async {
    await SQLHelper.deletenote(id);
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text("Note Deleted")));
    refreshData();
  }
}

// import 'package:flutter/material.dart';
// import 'package:myflutterproject/sql%20lite/sqlhelper.dart';
//
// void main(){
//   runApp(MaterialApp(home: SqlMain(),debugShowCheckedModeBanner: false,));
// }
// class SqlMain extends StatefulWidget{
//   @override
//   State<SqlMain> createState() => _SqlMainState();
// }
//
// class _SqlMainState extends State<SqlMain> {
//   bool isLoading=true;
//   List<Map<String, dynamic>> note_from_db = [];  //to store data from sqflite
//
//   @override
//   void initState() {
//     // refreshing the ui
//     refreshData();
//     super.initState();
//   }
//
//   void refreshData() async {
//     final datas = await SQLHelper.readNotes(); //read data from sqflite
//     setState(() {
//       note_from_db = datas;
//       isLoading = false;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("my notes"),),
//       body: isLoading
//         ? const Center(child: CircularProgressIndicator()):ListView.builder(itemBuilder: (context,index){
//          return Card(
//            child: ListTile(
//              title: Text("${note_from_db[index][title]}"),
//              subtitle: Text("${note_from_db[index][note]}"),
//              trailing: SizedBox(
//                width: 100,
//                child: Row(
//                  children: [
//                    IconButton(onPressed: () {
//                      showForm(note_from_db[index]["id"]);
//                    },
//                    icon: Icon(Icons.edit)),
//                    IconButton(onPressed: () {
//                      deleteNote(note_from_db[index]["id"]);
//                    },
//                        icon: Icon(Icons.delete)),
//
//                  ],
//                ),
//              ),
//            ),
//          );
//       },itemCount: note_from_db.length,
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () =>showForm(null),
//         child: const Icon(Icons.add),
//       ),
//     );
//   }
//
//   final title = TextEditingController();
//   final note = TextEditingController();
//
//   void showForm(int? id) async {
//     if (id != null) {
//       final existingNote = note_from_db.firstWhere((note) => note['id'] == id);
//       title.text = existingNote['tittle'];
//       note.text = existingNote['note'];
//     }
//
//     showModalBottomSheet(
//       context: context,
//
//       isScrollControlled: true,
//       builder: (context)=>Container(
//         child: Column(
//           children: [
//             TextField(
//               controller: title,
//               decoration: InputDecoration(
//               hintText: 'title',
//               border: OutlineInputBorder()
//             ),
//             ),
//             TextField(
//               controller: note,
//               decoration: InputDecoration(
//               helperText: 'note',
//               border: OutlineInputBorder()
//             ),
//             ),
//             ElevatedButton(onPressed: () async {
//               if (id==null) {
//                 await addNote();
//               }
//               if (id!=null) {
//                 await updateNote(id);
//               }
//               title.text = "";
//               note.text = "";
//               Navigator.of(context).pop();
//             },
//                 child: Text(id==null ? 'ADD NOTE' : "UPDATE")
//             )
//           ],
//         ),
//       )
//     );
//   }
//
//   Future addNote() async {
//     await SQLHelper.createNote(title.text,note.text);
//     refreshData();
//   }
//
//   Future<void> updateNote(int id) async {
//     await SQLHelper.updateNote(id, title.text, note.text);
//     refreshData();
//   }
//
//   Future deleteNote(int id)async{
//     await SQLHelper.deletenote(id);
//     ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Note deleted")));
//     refreshData();
//   }
//
//
// }