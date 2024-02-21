import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {

  WidgetsFlutterBinding.ensureInitialized();

  ///hive initialization
  await Hive.initFlutter();
  await Hive.openBox('task_box');

  runApp(MaterialApp(home: HomeHive(),debugShowCheckedModeBanner: false,));
}

class HomeHive extends StatefulWidget{
  @override
  State<HomeHive> createState() => _HomeHiveState();


}

class _HomeHiveState extends State<HomeHive> {
  //to store task from hive db
  List<Map<String, dynamic>> task =[];

  //object creation of hive
  final tbox = Hive.box('task_box');

  @override
  void initState() {
    super.initState();
    loadTask();
  }
  // creating new data
  Future<void> createTask(Map<String, dynamic>task) async {
    await tbox.add(task);
    loadTask();
  }

  //read all the data
  void loadTask(){
    final data = tbox.keys.map((id){
      final value = tbox.get(id);
      return {'key' : id, 'name' : value['name'], 'details' : value['details']};
    }).toList();

    setState(() {
      task = data.reversed.toList();
    });
  }
  //updating hive data
  Future<void> updateTask(int key,Map<String, dynamic> uptask) async{
    await tbox.put(key, uptask);
    loadTask();
  }
  //deleting hive data
  Future<void> deleteTask(int key) async{
    await tbox.delete(key);
    loadTask();
  }
  //reading single data
  Map<String, dynamic> readData(int key){
    final data = tbox.get(key);
    return data;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: task.isEmpty
        ? const Center(
        child: Text(
          "NO DATA",
          style: TextStyle(fontSize: 40),
        ),
      )
          : ListView.builder(itemBuilder: (context,index){
        return Card(
          color: Colors.pinkAccent,
          margin: const EdgeInsets.all(10),
          elevation: 3,
          child: ListTile(
            title: Text(task[index]['name']),
            subtitle: Text(task[index]['details']),
            trailing: Wrap(
              children: [
                IconButton(onPressed: () {
                  showForm(context, task[index]['key']);
                  },
                    icon: Icon(Icons.edit_calendar)),
                SizedBox(width: 5,),
                IconButton(onPressed: () {
                  deleteTask(task[index]['key']);
                  },
                    icon: Icon(Icons.delete))
              ],
            ),
          ),
        );
      },itemCount: task.length,),
      floatingActionButton: FloatingActionButton(
        onPressed: () => showForm(context, null),
        child: const Icon(Icons.add),
      ),
    );
  }
  
  final name_controller = TextEditingController();
  final details_controller= TextEditingController();

  void showForm(BuildContext context, int? id) async  {
    if(id!=null){
      final ex_task = 
      task.firstWhere((element) => element['key']== id);
      name_controller.text = ex_task['name'];
      details_controller.text = ex_task['details'];
    }
    
    showModalBottomSheet(context: context, 
        isScrollControlled: true,
        elevation: 5,
        builder: (context){
      return Container(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom + 120,
          top: 15,
          left: 15,
          right: 15
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              controller: name_controller,
              decoration: const InputDecoration(
                hintText: "Task name",
                border: OutlineInputBorder()
              ),
            ),
            TextField(
              controller: details_controller,
              decoration: const InputDecoration(
                hintText: "Task details",
                border: OutlineInputBorder()
              ),
            ),
            const SizedBox(height: 15,),
            ElevatedButton(onPressed: () async {
              if (id == null){
                createTask({'name' : name_controller.text, 'details' : details_controller.text});
              }
              if (id != null){
                updateTask(id, {'name': name_controller.text, 'details' : details_controller.text});
              }
              name_controller.text = "" ;
              details_controller.text = "" ;
              Navigator.of(context).pop();
            }, 
                child: Text(id == null ? "Create Task" : "Update Task"))
          ],
        ),
      );
        });
  }
}