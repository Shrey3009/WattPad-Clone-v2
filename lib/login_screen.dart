// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'signup_screen.dart';
import 'home.dart';

class LoginScreen extends StatefulWidget {
  _LoginScreenState createState() => _LoginScreenState();
  static const routeName = '/login';
  
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey();

  void _submit() {
    if (_formKey.currentState!.validate()) {
      // If the form is valid, display a snackbar. In the real world,
      // you'd often call a server or save the information in a database.
      //ScaffoldMessenger.of(context).showSnackBar(
       // const SnackBar(content: Text('Logging in ......')),
        Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Application()),
            );

    
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Login"),
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
          actions: <Widget>[
            FlatButton(
                onPressed: () {
                  Navigator.of(context)
                      .pushReplacementNamed(SignupScreen.routeName);
                },
                textColor: Colors.white,
                child: Row(
                  children: <Widget>[Text('Signup'), Icon(Icons.add)],
                ))
          ],
        ),
        body: Stack(children: <Widget>[
          Container(
            decoration: BoxDecoration(
                gradient:
                    LinearGradient(colors: [
                      Colors.black,
                       Colors.orange])),
          ),
          Center(
              child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            color: Colors.orange,
            child: Container(
              height: 240,
              width: 300,
              padding: EdgeInsets.all(16),
              child: Form(
                key: _formKey,
                child: SingleChildScrollView(
                  child: Column(children: <Widget>[
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Email'),
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value!.isEmpty || !value.contains('@')) {
                          return 'invalid';
                        }
                        return null;
                      },
                      onSaved: (value) {},
                    ),
                    TextFormField(
                      decoration: InputDecoration(labelText: 'Password'),
                      obscureText: true,
                      validator: (value) {
                        if (value!.isEmpty || value.length <= 5) {
                          return "invalid";
                        }
                        return null;
                      },
                      onSaved: (value) {},
                    ),
                    SizedBox(
                      width: 5.0,
                      height: 15.0,
                      //Card
                    ), //SizedBox
                    RaisedButton(
                      child: Text("Submit"),
                      onPressed: () {
                        _submit();
                      },
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      color: Colors.black,
                      textColor: Colors.white,
                    )
                  ]),
                ),
              ),
            ),
          ))
        ]));
  }
}
