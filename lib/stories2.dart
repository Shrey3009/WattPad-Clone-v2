import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'otherpage.dart';
import 'home.dart';

class Stories2 extends StatelessWidget {
  const Stories2({Key? key}) : super(key: key);

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
                  title: Text('Stories', style: TextStyle(color: Colors.white)),
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
      body: SafeArea(
          child: SingleChildScrollView(
        child: Card(
          elevation: 3,
          child: ListTile(
            subtitle: Container(
              padding: EdgeInsets.all(4),
              child: Html(
                data: """"<div>
        <h1>An Adventurous Story</h1>
        <h3>Written by Dummy User2</h3>
        <p>This story contains the adventures of dummy user 2.
        It has action, thrill, adventure, etc</p>
        <p>It was a nice summer day and Daryl decided to go for a walk. 'Why don't you take that magnifying glass with you,' said his uncle, 'see what kind of an adventure you can find.' Daryl didn't think there was much adventure in a magnifying glass, but he stuck it in his pocket anyway along with some peanut butter crackers.</p>
        <p>He walked to his favorite tree and sat down in the warm sand to eat his crackers. As he ate, some crumbs fell to the ground. He took out the magnifying glass when he noticed an ant had already found his cracker crumbs. 'Hey,' he thought, 'I'll check this out.'</p>
      </div>""",
              ),
            ),
          ),
        ),
      )),
    );
  }

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    throw UnimplementedError();
  }
}
