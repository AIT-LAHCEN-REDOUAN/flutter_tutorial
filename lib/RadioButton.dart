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

enum Fruit {Apple,Orange,Banana}
class _MyHomePageState extends State<MyHomePage> {

  //initial value
  Fruit? _fruit= Fruit.Apple;

  bool isSwitched = false ;



  @override
  Widget build(BuildContext context) {


    return Scaffold(
         appBar: AppBar(
           title: const Text("RADIO BUTTON"),

         ),
      body: Center(
        child: Column(
          children: [
              const SizedBox(height: 20),
              const Text("Please Choose One"),
              const SizedBox(height: 20,),
              ListTile(
                title: const  Text("Apple"),
                leading: Radio<Fruit>(
                  value: Fruit.Apple,
                  groupValue: _fruit ,
                  onChanged: (Fruit? value){
                    //change the State of the radio button
                    setState(() {
                      _fruit = value;
                    });

                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: const Text("You Choose Apple")));

                  },
                ),
              ),
            ListTile(
              title: const  Text("Orange"),
              leading: Radio<Fruit>(
                value: Fruit.Orange,
                groupValue: _fruit ,
                onChanged: (Fruit? value){
                  setState(() {
                    _fruit = value;
                  });

                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: const Text("You Choose Orange")));

                },
              ),
            ),
            ListTile(
              title: const  Text("banana"),
              leading: Radio<Fruit>(
                value: Fruit.Banana,
                groupValue: _fruit ,
                onChanged: (Fruit? value){
                  setState(() {
                    _fruit = value;
                  });

                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: const Text("You Choose Banana")));

                },
              ),
            ),
            ElevatedButton(
                onPressed: (){
              debugPrint(
                "Click me"
              );
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: const Text("You Click Me")));
            }, child: const Text("Elevated Button"), ),

            TextButton(      onPressed: (){
              debugPrint(
                  "Click me"
              );
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: const Text("You Click Me")));
            } , child: const Text("Text Button")) ,
            
            OutlinedButton(    onPressed: (){
              debugPrint(
                  "Click me"
              );
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: const Text("You Click Me")));
            }, child: const Text("Outlined Button")),

            //Row
            const Row(
              children: [
                Text("Redouan"),
                SizedBox(width: 10),
                Text("Ali"),
                SizedBox(width: 10),
                Text("Osama"),
                SizedBox(width: 10),
                Icon(Icons.coffee , color: Colors.deepOrangeAccent,size: 70,),
                SizedBox(width: 10),
                Icon(Icons.coffee , color: Colors.tealAccent,size: 70,),
              ],
            ),
            
            Switch(value: isSwitched, onChanged: (value){
              setState(() {
                isSwitched= value;
              });

              debugPrint(
                  "Click me $value "
              );
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: const Text("You Switch Me")));
            } )

          ],
        ),
      ),
    );


  }
}