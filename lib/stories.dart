import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'otherpage.dart';
import 'home.dart';

class Stories extends StatelessWidget {
  const Stories({Key? key}) : super(key: key);

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
        <h1>A Humorous Story</h1>
        <h3>Written by Dummy User</h3>
        <p>This is a very funny story which is experienced by Dummy User.
        It has all elements of comedy</p>
        <p>I loved the dress that I bought at a flea market. It fit perfectly, and the skirt was a swirl of intricate pleats. I wore it confidently to an evening party and glowed when a woman exclaimed, “Oh, how stunning!” Yes, I was grinning from ear to ear, until she added cheerfully, “Hang on to it, honey. Pleats will come back someday.”</p>
        <p>A customer walked into my clothing shop and asked to see the pants that were advertised in the paper that day. “We don’t have an ad in the paper today,” I told her. She insisted I was wrong, so I got a copy of the paper, and we went through it, eventually landing on an ad for pants from another local store. Exasperated, the customer glared at me and said, “In my newspaper, the ad was for this store!”</p>
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
