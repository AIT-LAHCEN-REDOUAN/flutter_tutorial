import 'package:flutter/material.dart';



void main(){
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hello"),
        ),
        body: ListView(
          children: [
            Center(
              child: Text("Employe",style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold)
                ,),

            ),

            SizedBox(height: 20),
            
            DataTable(columns: [
              DataColumn(label: Text("id")),
              DataColumn(label: Text("Name")),
              DataColumn(label: Text("Age"))
            ], rows: [
                 DataRow(cells: [
                   DataCell(Text("1")),
                   DataCell(Text("AMINE")),
                   DataCell(Text("20"))
                ]),
              DataRow(cells: [
                DataCell(Text("2")),
                DataCell(Text("REDOUAN")),
                DataCell(Text("21"))
              ]),
              DataRow(cells: [
                DataCell(Text("3")),
                DataCell(Text("MARIAM")),
                DataCell(Text("15"))
              ])
            ] )
          ],
        ),
      ),
    );


  }
}