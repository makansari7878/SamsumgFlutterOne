import 'package:flutter/material.dart';

class ListDemo extends StatelessWidget {
  const ListDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('LIST SCREEN'),),
      body: Material(
        child: getLongList() ,
      ),
    );
  }

  List<String> getListItems(){
    var items = List<String>.generate(1000, (count) => 'ITEM $count' );
    return items;
  }
  Widget getLongList(){
    var myItems = getListItems();
    var listView = ListView.builder(
        itemBuilder: (context, index){
          return Card(
            elevation: 3,
            margin: EdgeInsets.symmetric(horizontal:4, vertical: 14),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(9),
              side: BorderSide(width: 2, color: Colors.redAccent)
            ),
            child: ListTile(
              tileColor: Colors.yellowAccent,
              title: Text(myItems[index],

                style: TextStyle(fontSize: 20, color: Colors.red ),),
              onTap: (){
                print('item clicked is ${myItems[index]}');
              },
            ),
          );
        }
    );
    return listView;
  }

  Widget getList(){
    var listView = ListView(
      children: [
        ListTile(
          leading: Icon(Icons.access_alarm),
          title: Text('THE HINDU'),
          subtitle: Text('Daily Newsletter'),
          trailing: Icon(Icons.ac_unit),
        ),
        ListTile(
          leading: Icon(Icons.access_alarm),
          title: Text('TIMES OF INDIA'),
          subtitle: Text('Weekly Newsletter'),
          trailing: Icon(Icons.ac_unit),
        ),
        ListTile(
          leading: Icon(Icons.access_alarm),
          title: Text('INDIAN EXPRESS'),
          subtitle: Text('Montly Newsletter'),
          trailing: Icon(Icons.ac_unit),
        ),
      ],
    );

    return listView;
  }
}
