import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.indigo,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
           Image.asset('assets/images/money.png'),
           const Text('Translation',style:TextStyle(color:Colors.white)),
           const SizedBox(height:20),
           Container(
            width: 500,
            decoration: BoxDecoration(
              
              color: const Color.fromARGB(255, 179, 182, 199),
              borderRadius: BorderRadius.all(Radius.circular(5)),
            ),
            child: Column(children:<Widget>[
              TextField(decoration:InputDecoration(hintText:'Email',)),
              SizedBox(height:20),
              TextField(decoration:InputDecoration(hintText:'Password',)),
            ]),
           )
          ],
        ),
      ),
    );
  }
}
