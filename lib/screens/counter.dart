import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Counter extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   return Counter_State();
  }
}

class Counter_State extends State<Counter>{

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
      appBar: AppBar(title: Text("COUNTER"),),
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
                textProcess();
                showingToast();
                showingSnackBar();

              },
                  child: Text('INCREMENT')),
              SizedBox(height: 30,),
              Text('Counter is : $username ',
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