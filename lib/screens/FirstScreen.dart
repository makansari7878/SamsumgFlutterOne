import 'package:flutter/material.dart';

class Firstscreen extends StatelessWidget {
  const Firstscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("FIRST SCREEN"),),
      body: Material(
        color: Colors.cyanAccent,
        child: Center(
          child: Column(
            children: [
              Text('Hello WORLD', textDirection: TextDirection.ltr,),
              ElevatedButton(onPressed: (){}, child: Text('test')),
          //TextField( decoration: InputDecoration( labelText: 'Password', hintText: 'Enter your password', ),)
            ],
          ),

          // style: TextStyle(fontSize: 30, color: Colors.redAccent),
        ),
      ),

    );
  }
}
