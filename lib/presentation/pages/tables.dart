import 'package:flutter/material.dart';

import 'package:flutter_hooks/flutter_hooks.dart';

class TableBloc extends HookWidget {
  const TableBloc({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> myList = [
      "Mourad",
      "Bouzid",
      "20",
      "170",
      "60",
      "Mourad",
      "Bouzid",
      "20",
      "170",
      "60",
      "Mourad",
      "Bouzid",
      "20",
      "170",
      "60",
      "Mourad",
      "Bouzid",
      "20",
      "170",
      "60",
      "Mourad",
      "Bouzid",
      "20",
      "170",
      "60",
      "Mourad",
      "Bouzid",
      "20",
      "170",
      "60",
      "Mourad",
      "Bouzid",
      "20",
      "170",
      "60"
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("MyWidget"),
      ),
      body: Center(
        child: Text("Hello World"),
      ),
    );
  }
}

// ListView.builder(
//   itemCount: myList.length,
//   itemBuilder:(BuildContext context, int i){
//     return
//     Card(
//       color: Colors.green,
//       child: ListTile(
//       textColor: Colors.purple,
//       minVerticalPadding: 20,
//       title: Text(myList[i],textAlign: TextAlign.center),

//             ),
//     );
//   }

//    ),

////////////////////////////////////////////////////////
// DataTable(
//  columns: [
//     DataColumn(label: Text("Name")),
//     DataColumn(label: Text("Age")),
//     DataColumn(label: Text("Height")),
//     DataColumn(label: Text("Weight")),
//   ],
//  rows: [
//     DataRow(cells: [
//       DataCell(Text("John")),
//       DataCell(Text("20")),
//       DataCell(Text("170")),
//       DataCell(Text("60")),
//     ]),
//     DataRow(cells: [
//       DataCell(Text("Jane")),
//       DataCell(Text("18")),
//       DataCell(Text("160")),
//       DataCell(Text("50")),
//     ]),
//     DataRow(cells: [
//       DataCell(Text("Jack")),
//       DataCell(Text("19")),
//       DataCell(Text("175")),
//       DataCell(Text("55")),
//     ]),

//  ],
