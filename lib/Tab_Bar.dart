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
    return DefaultTabController(length: 2, child: Scaffold(
      appBar: AppBar(
        bottom: const TabBar(
          tabs: [
            Tab(icon: Icon(Icons.icecream_outlined),text: "Tab1",),
            Tab(icon: Icon(Icons.icecream_outlined),text: "Tab2",),
          ],
        ),
        title: const Text("My Application"),
      ),

      body: const TabBarView(
        children: [
          Center(
            child: Text("السلام عليكم ",textDirection: TextDirection.ltr,style: TextStyle(fontWeight: FontWeight.w600 ,
            fontSize: 30.0 , fontStyle: FontStyle.italic),) ,
          ) ,
          Center(
            child: Text("my Tab 2"),
          )
        ],
      ),
    ));
  }
}
