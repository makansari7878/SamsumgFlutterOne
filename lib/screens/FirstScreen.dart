import 'package:flutter/material.dart';
import 'package:samsumg2proj/screens/counter.dart';
import 'package:samsumg2proj/screens/list_demo.dart';

class Firstscreen extends StatelessWidget {
  String result = "";
   Firstscreen({required result});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("HOME SCREEN"),
        actions: [
          PopupMenuButton(itemBuilder: (BuildContext context) =>
          <PopupMenuEntry<String>>[
            PopupMenuItem<String>(
              value: 'firstscreen',
              child: Text('FirstScreen'),
            ),
            PopupMenuItem<String>(
              value: 'counter',
              child: Text('COUNTER'),
            ),
            PopupMenuItem<String>(
              value: 'list',
              child: Text('LIST'),
            ),

          ],
            onSelected: (String result ){
              if (result == "list"){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context)=> ListDemo()));
              }

            },
          ),
        ],

      ),

      body: Material(
        color: Colors.cyanAccent,
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 50,),
              Text('Hello WORLD', textDirection: TextDirection.ltr,),
              ElevatedButton(onPressed: (){
               // Navigator.pushNamed(context, '/list');
              // Navigator.pushReplacementNamed(context, '/list');

                Navigator.of(context).
                push(MaterialPageRoute(builder:
                    (context) =>Counter(value : "ANSARI"),

                ));

              }, child: Text('Go to ListScreen')),
              SizedBox(height: 50,),
              ElevatedButton(onPressed: (){
                _showModalBottomSheet(context);

              }, child: Text('Modal')),
              SizedBox(height: 50,),
          Expanded(child: TextField())
          //TextField( decoration: InputDecoration( labelText: 'Password', hintText: 'Enter your password', ),)
            ],
          ),

          // style: TextStyle(fontSize: 30, color: Colors.redAccent),
        ),
      ),

    );
  }

  void _showModalBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true, // Allows the sheet to be larger than the screen
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(25.0)),
      ),
      builder: (BuildContext context) {
        return Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('This is a full-screen modal bottom sheet'),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context); // Close the bottom sheet
                },
                child: Text('Close'),
              ),
            ],
          ),
        );
      },
    );
  }
}
