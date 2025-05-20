import 'package:flutter/material.dart';
import 'package:samsumg2proj/screens/list_demo.dart';
import 'FirstScreen.dart';
import 'counter.dart';

class DahBoard extends StatefulWidget {
  const DahBoard({super.key});

  @override
  State<DahBoard> createState() => _DahBoardState();
}

class _DahBoardState extends State<DahBoard> {
  int myCurrentIndex = 0;
  final tabs = [
    //Firstscreen('result'),
    Counter(value: "Ansari"),
    ListDemo(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //title: const Text("App Dashboard"),
        centerTitle: true,
      ),
      body: tabs[myCurrentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: myCurrentIndex,
        iconSize: 30,
        selectedFontSize: 20,
        showUnselectedLabels: true,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            backgroundColor: Colors.green,
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            backgroundColor: Colors.green,
            label: "Counter",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.security),
            backgroundColor: Colors.green,
            label: "List",
          ),
        ],

        onTap: (index) {
          setState(() {
            myCurrentIndex = index;
          });
        },
        type: BottomNavigationBarType.shifting,
      ),
    );
  }
}
