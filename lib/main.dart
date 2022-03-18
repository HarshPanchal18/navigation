import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'SecondFile.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

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

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children:<Widget> [
            UserAccountsDrawerHeader(accountName: Text('Harsh'),
              accountEmail: Text("harsh.sdjic2021@gmail.com"),
            decoration: BoxDecoration(
              color: Colors.deepOrangeAccent,
            ),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.lightGreenAccent,
                child: Text("H",
                style: TextStyle(fontSize: 30.0),),
              ),
            ),

            ListTile(
              title: Text("College"),leading: Icon(Icons.account_balance_sharp),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SecondFile()));
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton:Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            onPressed: _decrementCounter,
            tooltip: 'Decrement',
            child: const Icon(Icons.arrow_back_rounded),),

        FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.arrow_forward_rounded),),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}