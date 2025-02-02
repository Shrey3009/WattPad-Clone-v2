// ignore_for_file: prefer_const_constructors, annotate_overrides, prefer_const_literals_to_create_immutables, unnecessary_const, unnecessary_new

import 'package:flutter/material.dart';
import 'otherpage.dart';

void main() {
  runApp(const MaterialApp(
    title: 'Home Page',
    home: Application(),
  ));
}

class Application extends StatefulWidget {
  const Application({Key? key}) : super(key: key);

  @override
  _ApplicationState createState() => _ApplicationState();
  static const routeName = '/homes';
}

class _ApplicationState extends State<Application>
    with SingleTickerProviderStateMixin {
  late TabController controller;
  @override
  void initState() {
    super.initState();
    controller = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  String rtext = 'Start reading';
  String wtext = 'Start writing';
  void method1() {
    setState(() {
      rtext = 'you clicked raised button';
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: Text(
            'WatttPad',
            style: TextStyle(color: Colors.grey[850], fontFamily: 'Lora'),
          ),
          backgroundColor: Colors.deepOrange,
        ),
        bottomNavigationBar: Material(
          color: Colors.deepOrange,
          child: new TabBar(controller: controller, tabs: [
            new Tab(
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
            ),
            new Tab(
              icon: Icon(
                Icons.search,
                color: Colors.white,
              ),
            ),
            new Tab(
                icon: Icon(
              Icons.add_alert,
              color: Colors.white,
            )),
          ]),
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
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/read.png',
                height: 150,
                width: 200,
              ),
              SizedBox(
                  width: 200.0,
                  height: 70.0,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const op()));
                      },
                      child: Text(rtext),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.deepOrange,
                      ))),
              SizedBox(height: 15),
              Image.asset(
                'assets/write.png',
                height: 150,
                width: 200,
              ),
              SizedBox(
                  width: 200.0,
                  height: 70.0,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const op()));
                      },
                      child: Text(wtext),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.deepOrange,
                      ))),
            ],
          ),
        ));
  }
}
