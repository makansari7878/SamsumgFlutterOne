import 'package:flutter/material.dart';
import 'package:samsumg2proj/screens/FirstScreen.dart';
import 'package:samsumg2proj/screens/counter.dart';
import 'package:samsumg2proj/screens/list_demo.dart';
import 'package:samsumg2proj/screens/second_screen.dart';
import 'package:samsumg2proj/screens/third_screen.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
        theme: ThemeData(
          textTheme: TextTheme(
            headlineLarge: TextStyle(fontSize: 25, color:Colors.blue),
            bodyMedium: TextStyle(fontSize: 16, color:Colors.purpleAccent)
          ),
          colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: Colors.redAccent,
            surface: Colors.yellowAccent
          ),
          inputDecorationTheme: InputDecorationTheme(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 2, color: Colors.black87)
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(width: 2, color: Colors.redAccent),
            ),
            labelStyle: TextStyle(color: Colors.teal),
            hintStyle: TextStyle(color: Colors.deepPurple)

          ),

        ),

        home: Counter()

    );
  }

}


