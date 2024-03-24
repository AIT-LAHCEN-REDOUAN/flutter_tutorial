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

    return Scaffold(
      appBar: AppBar(
        title: const Text("GridViwe"),
      ),

      body: Center(
        child: GridView.count(
          crossAxisCount: 3,
          crossAxisSpacing: 20,
          mainAxisSpacing: 50,
          padding: const EdgeInsets.all(15),
          primary: false,


          children: [

            Container(
              padding: const EdgeInsets.all(15),
              child: const Text("REDOUAN"),
              color: Colors.pinkAccent,

            ),
            Container(
              padding: const EdgeInsets.all(15),
              child: const Text("REDOUAN"),
              color: Colors.amber,
            ),
            Container(
              padding: const EdgeInsets.all(15),
              child: const Text("REDOUAN"),
              color: Colors.cyan,
            ),
            Container(
              padding: const EdgeInsets.all(15),
              child: const Text("REDOUAN"),
              color: Colors.lightGreenAccent,
            ),
            Container(
              padding: const EdgeInsets.all(15),
              child: const Text("REDOUAN"),
              color: Colors.tealAccent,
            )
            ,
            Container(
              padding: const EdgeInsets.all(15),
              child: const Text("REDOUAN"),
              color: Colors.redAccent,
            )
            ,
            Container(
              padding: const EdgeInsets.all(15),
              child: const Text("REDOUAN"),
              color: Colors.deepPurple,
            )
            ,
            Container(
              padding: const EdgeInsets.all(15),
              child: const Text("REDOUAN"),
              color: Colors.indigoAccent,
            )
          ],
        ),
      ),
    );


  }
}