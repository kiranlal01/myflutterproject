import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: tables(),debugShowCheckedModeBanner: false,));
}

class tables extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.cyan,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.white),
          ),
          child: DataTable(

            columns: [
              DataColumn(
                  label: Text("name",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),)
              ),
              DataColumn(
                  label: Text("age",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),)
              ),
              DataColumn(
                  label: Text("salary",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),)
              ),
            ],
            rows: [
              DataRow(
                  cells: [
                    DataCell(Text("Ace")),
                    DataCell(Text("20")),
                    DataCell(Text("40000"))
                  ]
              ),
              DataRow(
                  cells: [
                    DataCell(Text("King")),
                    DataCell(Text("35")),
                    DataCell(Text("140000"))
                  ]
              ),
              DataRow(
                  cells: [
                    DataCell(Text("Jack")),
                    DataCell(Text("28")),
                    DataCell(Text("80000"))
                  ]
              ),
            ],
          ),
        ),
      ),
    );
  }

}