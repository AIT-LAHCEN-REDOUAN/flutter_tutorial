import 'dart:io';

import 'package:flutter/cupertino.dart';
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

  final List<String> entries = <String>["A","B","C","D","E","F"];
  final List<int> colorCodes = <int>[600,500,100,700,800,900];

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: const Text("List View"),
      ),

      body: ListView.builder(
        padding: const EdgeInsets.all(8) ,
        itemCount: entries.length,
        itemBuilder: (BuildContext content , int index){
          return Container(
            height: 50,
            color: Colors.cyan[colorCodes[index]],
            child: Center(child: Text("Entry ${entries[index]}"),),
          );
        },
      )
    );


  }
}