import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Storage extends StatefulWidget {
  const Storage({super.key});

  @override
  State<Storage> createState() => _StorageState();
}

class _StorageState extends State<Storage> {

  TextEditingController usernameController = TextEditingController();
  String username = '';

  @override
  void initState() {
    super.initState();
    loadSaveData();
  }


  loadSaveData() async{
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    setState(() {
      username = sharedPreferences.getString("usernamekey") ?? "";
    });
  }

  saveData() async{
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    setState(() {
      username = usernameController.text;
    });
    sharedPreferences.setString("usernamekey", "username");
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("STORAGE"),),
      body: Container(

        child: Column(
          children: [
            SizedBox(height: 40,),
            Row(
              children: [
                Expanded(child: TextField( controller: usernameController,)),
              ],
            ),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
                saveData();
            }, child: Text("Submit")),
            SizedBox(height: 40,),
            Text("Saved Data is : $username"),

          ],
        ),
      ),
    );
  }
}
