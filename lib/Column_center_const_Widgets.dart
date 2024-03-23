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
        title: const Text("Center Column const widgets"),
      ),

      body:  Center(
        child:  Column(
          children:   [
            const Text("hello"),
            const Text("redouan1"),
            const Icon(Icons.cached_sharp,size: 30,color: Colors.deepOrangeAccent),
            const Icon(Icons.content_copy_sharp,size: 50,color: Colors.lightBlue),
            const Icon(Icons.accessible_forward_rounded,size: 50, color:  Colors.teal),
            const SizedBox(height: 20),
                     Container(
                       height: 200 ,
                       width: 300 ,
                       color:Colors.greenAccent ,
                       alignment: Alignment.center ,
                       child: const Text("Hello Container ") ,
                     )
                   ],
                 )
             ));


  }
}