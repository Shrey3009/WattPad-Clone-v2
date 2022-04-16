// ignore_for_file: use_key_in_widget_constructors, camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:ebook_app/stories.dart';
import 'package:ebook_app/stories2.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class op extends StatelessWidget {
  const op({Key? key}) : super(key: key);
  // get controller => null;

  // final String ntext;
  // const op(this.ntext);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text('WatttPad',
              style: TextStyle(color: Colors.grey[850], fontFamily: 'Lora')),
          backgroundColor: Colors.deepOrange,
        ),
        drawer: Drawer(
            backgroundColor: Colors.grey[850],
            child: ListView(
              children: <Widget>[
                UserAccountsDrawerHeader(
                  accountName: Text('Dummy User'),
                  accountEmail: Text('dummyemail@gmail.com'),
                  currentAccountPicture: CircleAvatar(
                    backgroundColor: Colors.black54,
                    child: Text('M'),
                  ),
                  decoration: BoxDecoration(color: Colors.deepOrange),
                ),
                ListTile(
                  title: Text('Home', style: TextStyle(color: Colors.white)),
                  trailing: Icon(Icons.arrow_forward),
                  onTap: () => Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) => Application())),
                ),
                ListTile(
                    title:
                        Text('Stories', style: TextStyle(color: Colors.white)),
                    trailing: Icon(Icons.arrow_forward),
                    onTap: () => Navigator.of(context).push(MaterialPageRoute(
                        builder: (BuildContext context) => op()))),
                ListTile(
                  title: Text('Close', style: TextStyle(color: Colors.white)),
                  trailing: Icon(Icons.close),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            )),
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 10,
              ),
              Card(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const ListTile(
                      tileColor: Colors.grey,
                      leading: Icon(Icons.book),
                      title: Text('A Humorous Story'),
                      subtitle: Text('Written by Dummy User'),
                      minVerticalPadding: 3,
                    ),
                    Ink(
                      color: Colors.grey,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          TextButton(
                            child: const Text('OPEN'),
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Stories()));
                            },
                            style: TextButton.styleFrom(
                              primary: Colors.blue,
                              backgroundColor: Colors.grey,
                            ),
                          ),
                          const SizedBox(width: 8),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Card(
                  child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const ListTile(
                    tileColor: Colors.grey,
                    leading: Icon(Icons.book),
                    title: Text('An Adventurous Story'),
                    subtitle: Text('Written by Dummy User2'),
                    minVerticalPadding: 3,
                  ),
                  Ink(
                    color: Colors.grey,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        TextButton(
                          child: const Text('OPEN'),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Stories2()));
                          },
                          style: TextButton.styleFrom(
                            primary: Colors.blue,
                            backgroundColor: Colors.grey,
                          ),
                        ),
                        const SizedBox(width: 8),
                      ],
                    ),
                  )
                ],
              ))
            ],
          ),
        ));
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}
