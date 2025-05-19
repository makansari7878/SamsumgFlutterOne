import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SpDemo extends StatefulWidget {
  const SpDemo({super.key});
  @override
  State<SpDemo> createState() => _SpDemoState();
}

class _SpDemoState extends State<SpDemo> {

  TextEditingController usernameController = TextEditingController();
  String username = '';

  @override
  void initState() {
    super.initState();
    loadSaveData();

  }

  loadSaveData() async{
    SharedPreferences sp = await SharedPreferences.getInstance();
    setState(() {
      username = sp.getString('keyusername') ?? '';
    });


  }

  saveData() async{
    SharedPreferences sp = await SharedPreferences.getInstance();
       setState(() {
      username = usernameController.text;
    });
    sp.setString('keyusername', username);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('shared pref'),),
      body:  Center(
        child: Container(
          child: Column(
            children: [
              SizedBox(height: 30,),
              Expanded(child:    TextField(
                controller: usernameController,
                decoration: InputDecoration(labelText: 'Enter text'),
              ),),
              ElevatedButton(
                onPressed: saveData,
                child: Text('Save'),
              ),
              SizedBox(height: 20),
              Expanded(child:  Text(
                'Saved Text: $username',
                style: TextStyle(fontSize: 20 , color: Colors.redAccent),
              ),)
            ],

          ),
        ),

      ),
    );
  }
}
