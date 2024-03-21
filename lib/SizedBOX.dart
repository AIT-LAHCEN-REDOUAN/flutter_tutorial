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
          title: const Text("HELLO"),
        ),

        body:Center(
          child:  Column(children: [
            const  SizedBox(height: 30),
            Container(
              height: 140,width: 140,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(9),
              boxShadow: [
               const BoxShadow(color: Colors.indigo,blurRadius: 5,spreadRadius:2 ,offset: Offset(5,5) ),
              ],
              color: Colors.deepOrange
            ),
              child: const Text("REDOUAN"),
            ),
            const  SizedBox(height: 30),
            Container(
              height: 140,width: 140,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(9),
                  boxShadow: [
                    const BoxShadow(color: Colors.indigo,blurRadius: 5,spreadRadius:2 ,offset: Offset(5,5) ),
                  ],
                  color: Colors.amberAccent
              ),
              child: const Text("REDOUAN"),
            ),
            const  SizedBox(height: 30),
            Container(
              height: 140,width: 140,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(9),
                  boxShadow: [
                    const BoxShadow(color: Colors.indigo,blurRadius: 5,spreadRadius:2 ,offset: Offset(5,5) ),
                  ],
                  color: Colors.green
              ),
              child: const Text("REDOUAN"),
            )
          ],),
        )

      /*Center(
         child:  const SizedBox(
           width: 200,
           height: 300,
           child: Card(
             color: Colors.deepOrangeAccent,
             child: Center(
               child: const Text("Yo Friend"),
             ),
           ),
         )
        ),*/

    );
  }
}