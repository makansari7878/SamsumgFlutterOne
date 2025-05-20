import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:samsumg2proj/screens/FirstScreen.dart';
import 'package:samsumg2proj/screens/second_screen.dart';
import 'package:samsumg2proj/screens/tab_demo.dart';


class Counter extends StatefulWidget{
  String value = "";
  Counter({required this.value});

  @override
  State<StatefulWidget> createState() {
   return Counter_State(value);
  }
}

class Counter_State extends State<Counter>{

  late String value;
  Counter_State(this.value);

  String username = '';
  TextEditingController usernameController = TextEditingController();
  var count = 0;
  void incrementCount(){
    setState(() {
      count++;
    });
  }

  void textProcess(){
    setState(() {
      username = usernameController.text;
    });


    }

  void showingToast(){
    Fluttertoast.showToast(
        msg: "username is $username",
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.CENTER,
        backgroundColor: Colors.yellowAccent,
        textColor: Colors.red,
        fontSize: 15
    );
  }

  void showingSnackBar(){
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('username is $username'),
      duration: Duration(seconds: 3),)
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("COUNTER   $username"),),
      body: Material(
        color: Colors.lightGreenAccent,

        child: Center(
          child: Column(
            children: [
              SizedBox(height: 30,),
              Row(
                children: [
                  SizedBox(height: 150,),
                  Expanded(
                      child: TextField(
                        controller: usernameController,
                        decoration: InputDecoration(
                          labelText: "username",
                          hintText: 'Enter the username'
                        )
                      )),
                ],
              ),
              SizedBox(height:10,),
              ElevatedButton(onPressed: (){
                // textProcess();
                // showingToast();
                // showingSnackBar();

                Navigator.of(context).
                push(MaterialPageRoute(builder:
                    (context) =>TabDemo() ));

              },
                  child: Text('INCREMENT')),
              SizedBox(height: 30,),
              Text('Counter is : $value ',
                /*style: Theme.of(context).textTheme.headlineLarge,*/
                style: TextStyle(fontSize: 20, color: Colors.redAccent), ),

              Text("Demo of Theme Text", style: Theme.of(context).textTheme.bodyMedium,)
            ],
          ),
        ),
      ),
    );
  }

}