import 'package:flutter/material.dart';

import 'package:samsumg2proj/screens/FirstScreen.dart';
import 'package:samsumg2proj/screens/counter.dart';
import 'package:samsumg2proj/screens/list_demo.dart';
import 'package:samsumg2proj/screens/second_screen.dart';
import 'package:samsumg2proj/screens/dah_board.dart';
import 'package:samsumg2proj/screens/sp_demo.dart';
import 'package:samsumg2proj/screens/storage.dart';
import 'package:samsumg2proj/screens/tab_demo.dart';
import 'package:samsumg2proj/screens/third_screen.dart';

void main()async{

  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
       routes: {
        '/' : (context) =>  Storage(),
         '/list' : (context) => ListDemo(),
         '/second' : (context) => SecondScreen()
       },


       // home: SpDemo()

    );
  }

}


