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
        backgroundColor: Colors.blue,
        title: Text("AIT-LAHCEN REDOUAN",style: TextStyle(color:Colors.white),
        ),
        actions: [
          IconButton(
              onPressed:(){
                ScaffoldMessenger
                    .of(context)
                    .showSnackBar(SnackBar(content: Text("OVER-POWER")));
              }
              , icon:Icon(Icons.add_alert),iconSize: 50,color: Colors.white,

          )
        ],
      ),

      body: const Center(
        child: Text("TARNISHED",style: TextStyle(fontSize: 22.0,color: Colors.green),),
      ),
    );
  }
}
