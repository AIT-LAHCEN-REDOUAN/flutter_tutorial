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

      body: Center(
        child: Container(
            padding: const EdgeInsets.all(20),
            child: ElevatedButton(
              child: const Text("Click me") ,
              onPressed: (){
                 ScaffoldMessenger.of(context).showMaterialBanner(
                    const MaterialBanner(content:const Text("Material Banner"),
                    leading: Icon(Icons.agriculture_outlined),
                      backgroundColor: Colors.green,
                      actions: <Widget>[
                        TextButton(onPressed: null, child: const Text("DISMISS"),
                        )
                      ],
                    )
                 );
              },
            )
        )
      ),

        endDrawer:

        Banner(message: "Banner",location: BannerLocation.bottomEnd,child:
        Container(
          height: 200,
          width: 200,
          color: Colors.amberAccent,
          alignment: Alignment.center,
          child: const Text("TARNISHED"),
        ),)


    );
  }
}