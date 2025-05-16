import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('THIRD SCREEN'),),
      body: Stack(
        children: [
          // Background image
          Positioned.fill(
            child: Image.asset(
              'images/koc1.png',
              fit: BoxFit.fill,
            ),
          ),
          // Main content
          Material(
            color: Colors.greenAccent.withOpacity(0.5), // Make it semi-transparent
            child: Center(
              child: Container(
                height: 400,
                width: MediaQuery.of(context).size.width,
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      height: 100,
                      width: 100,
                      color: Colors.red,
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      height: 150,
                      width: 100,
                      color: Colors.blue,
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      height: 250,
                      width: 100,
                      color: Colors.green,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}