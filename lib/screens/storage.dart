import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:encrypt/encrypt.dart' as encrypt;

class Storage extends StatefulWidget {
  const Storage({super.key});

  @override
  State<Storage> createState() => _StorageState();
}

class _StorageState extends State<Storage> {
  TextEditingController usernameController = TextEditingController();
  String username = '';
  final key = encrypt.Key.fromSecureRandom(32);
  //final key1 = encrypt.Key.fromUtf8("input");
  final iv = encrypt.IV.fromSecureRandom(16);
  final encryption = encrypt.Encrypter(encrypt.AES(encrypt.Key.fromSecureRandom(32)));

  @override
  void initState() {
    super.initState();
    loadSaveData();
  }

  loadSaveData() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    final encryptedUsername = sharedPreferences.getString("usernamekey");

    if (encryptedUsername != null) {
      final myEncrypted = encrypt.Encrypted.fromBase64(encryptedUsername);
      final myDecrypted = encryption.decrypt(myEncrypted, iv: iv);
      setState(() {
        username = myDecrypted;
      });
    } else {
      setState(() {
        username = "";
      });
    }
  }

  saveData() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    final encrypted = encryption.encrypt(usernameController.text, iv: iv);
    await sharedPreferences.setString("usernamekey", encrypted.base64);
    setState(() {
      username = usernameController.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("STORAGE"),
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(height: 40),
            Row(
              children: [
                Expanded(
                  child: TextField(controller: usernameController),
                ),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                saveData();
              },
              child: Text("Submit"),
            ),
            SizedBox(height: 40),
            Text("Saved Data is : $username"),
          ],
        ),
      ),
    );
  }
}