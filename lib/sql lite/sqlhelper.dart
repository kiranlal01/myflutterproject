import 'package:sqflite/sqflite.dart' as sql;

class SQLHelper {
  static Future<sql.Database> myData() async {
    return sql.openDatabase('myNotes.db',version: 1,
    onCreate: (sql.Database database,int vaersion) async {
      await createTables(database);
    });
  }
  /// 2. create table with notes and column name as title and notes
  static Future<void> createTables(sql.Database database) async {
    await database.execute("""CREATE TABLE notes(
    id INTEGER PRIMARY KEY AUTOINCRIMENT NOT NULL,
    tittle TEXT,
    note TEXT,
    createdAt TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
    )""");
  }
  /// add datas to notes table inside myNotes.db
  static Future<int> createNote(String title,String note) async {
    final db = await SQLHelper.myData();      ///to open data base
    final data = {'title': title,'note': note};
    final id = await db.insert("note",data,
        conflictAlgorithm: sql.ConflictAlgorithm.replace);
    return id;
  }






  ///read all data from table
  static Future<List<Map<String, dynamic>>> readNotes() async{
    final db = await SQLHelper.myData(); ///to open database
    return db.query('notes', orderBy:"id");
  }

}