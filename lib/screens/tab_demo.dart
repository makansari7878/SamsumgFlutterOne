import 'package:flutter/material.dart';
import 'package:samsumg2proj/screens/FirstScreen.dart';
import 'package:samsumg2proj/screens/counter.dart';
import 'package:samsumg2proj/screens/list_demo.dart';

class TabDemo extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
  return TabDemo_State();
  }

}

class TabDemo_State extends State<TabDemo>{

  int myCurrentIndex = 0;
  final tabs = [
    Firstscreen(),
    ListDemo(),
    Counter(value: '',),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bottom Tabs"),),
      body: tabs[myCurrentIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: myCurrentIndex,
        iconSize: 30,
        selectedFontSize: 20,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              backgroundColor: Colors.cyan,
              label: "Home"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              backgroundColor: Colors.cyan,
              label: "Search"
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.security),
              backgroundColor: Colors.cyan,
              label: "security"
          ),
        ],


        onTap: (index){
          setState(() {
            myCurrentIndex = index;
          });
        },
      ),

    );
  }

}