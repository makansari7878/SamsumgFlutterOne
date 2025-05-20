/*
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
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

  storeData() async{
    var box = await Hive.openBox("myfile");
    box.put("name", "Ansari");
    box.put("age", 33);
    box.put("details", {
      'email': 'mak@gmail.com',
      'college':'AMC'
    });
    debugPrint(box.get('name'));
    debugPrint(box.get('age').toString());
    debugPrint(box.get('details')['email']);

  }

  Widget showData() {
    return FutureBuilder<Box>(
      future: Hive.openBox("myfile"),
      builder: (context, snapshot) {
        // Still loading
        if (!snapshot.hasData) {
          return CircularProgressIndicator();
        }

        final box = snapshot.data!;
        final details = box.get('details', defaultValue: {}) as Map;

        return Column(
          children: [
            Text("Name: ${box.get('name', defaultValue: 'Unknown')}"),
            Text("Age: ${box.get('age', defaultValue: 'N/A')}"),
            Text("Email: ${details['email'] ?? 'No email'}"),
            Text("College: ${details['college'] ?? 'No college'}"),
          ],
        );
      },
    );
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
                onPressed: showData,
                child: Text('Save'),
              ),
              SizedBox(height: 20),
              Expanded(child:  Text(
                'Saved Text: $username',
                style: TextStyle(fontSize: 20 , color: Colors.redAccent),
              ),),
              SizedBox(height: 20),
            Row(children: [
              showData()
            ],),

            ],

          ),
        ),

      ),
    );
  }
}
*/
