import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'FirstScreen.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(title: Text('SECOOND SCREEN'),),
      body: Material(
          child: Container(
            // padding: EdgeInsets.all(20),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            color: Colors.yellowAccent,
            padding: EdgeInsets.only(left: 10, top: 50),
            child: Column(
              children: [
                Row(
                  children: [
                 Text('Second Screen Number : ${myMathFunction()}',
                      style: TextStyle(fontSize: 20, color: Color(0xFFB11D87)),),

                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Text('Second row Number : ${myMathFunction()}',
                      style: TextStyle(fontSize: 20, color: Colors.blue,)),

                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Text('Thrid row number : ${myMathFunction()}',
                      style: TextStyle(fontSize: 20, color: Color(0xFFB11D87)),),

                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                   // Image.asset('images/koc1.png',height: 200, width: 200,)
                    SvgPicture.asset('images/mysvg.svg',height: 100, width: 100,)
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    ElevatedButton(onPressed: (){
                     // myAlert(context);
                      /*Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => Firstscreen()),
                              (route) => false);*/
                      Navigator.popUntil(context, ModalRoute.withName('/firstroute'));
                    },
                        child: Text('click me'))
                  ],
                ),

              ],
            ) ,
          )
      ),
    );
  }

  int myMathFunction(){
    var random = Random();
    var num = random.nextInt(100);
    return num;
  }

  myAlert(BuildContext context){
    showDialog(context: context, builder: (ctx) => AlertDialog(
      title:  Text("Alert Dialog Box"),
      content:  Text("You have raised a Alert Dialog Box"),
      actions: [
        TextButton(onPressed: (){
          Navigator.of(ctx).pop();
        },
            child: Text('OK')
        )
      ],

    ));

  }
}
