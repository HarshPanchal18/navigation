import 'package:flutter/material.dart';

void main(){
  runApp(SecondFile());
}

class SecondFile extends StatelessWidget{
  const SecondFile({Key? key}):super(key:key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("College"),
        centerTitle: true,
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children:<Widget> [
              const Text(
                'Welcome to college'
              ),
          ],
        ),
      ),
    );
  }
}