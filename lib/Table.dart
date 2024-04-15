import 'package:flutter/material.dart';

void main() {
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
    return Scaffold(
         appBar: AppBar(
           title: const Text("TABLE WIDGET"),
         ),
      body: Center(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(20.0),
              child: Table(
                border:TableBorder.all(color: Colors.deepOrangeAccent),
                children: const [
                  TableRow(
                    children: [
                      Column(
                        children: [
                          Icon(Icons.add_alert,size: 20.0,),
                          Text("My alert")
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.ac_unit_outlined,size: 20.0,),
                          Text("My alert")
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.accessible_forward,size: 20.0,),
                          Text("My alert")
                        ],
                      )
                    ]
                  ),
                  TableRow(
                      children: const [
                        Icon(Icons.account_balance_sharp,size: 20.0,),
                        Icon(Icons.account_tree_sharp,size: 20.0,),
                        Icon(Icons.add_alarm_outlined,size: 20.0,),
                      ]
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
