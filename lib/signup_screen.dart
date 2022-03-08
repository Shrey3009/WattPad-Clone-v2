import 'package:flutter/material.dart';
import 'login_screen.dart';


class SignupScreen extends StatefulWidget {
  static const routeName = '/signup';
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  TextEditingController _passwordController = new TextEditingController();
  void _submit(){
    if (_formKey.currentState!.validate()) {
                  // If the form is valid, display a snackbar. In the real world,
                  // you'd often call a server or save the information in a database.
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('You are successfully registered.')),
                  );
                }

  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("Sign Up"), 
        backgroundColor: Colors.black, // appbar color.
      foregroundColor: Colors.white,
        actions: <Widget>[
          FlatButton(
              onPressed: () {
                Navigator.of(context)
                    .pushReplacementNamed(LoginScreen.routeName);
              },
              textColor: Colors.white,
              child: Row(
                children: <Widget>[
                  Text('Log in'),
                  Icon(Icons.person),
                ],
              ))
        ]),
        body: Stack(children: <Widget>[
          Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Colors.black,
              Colors.orange,
            ])),
          ),
          Center(
              child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
              side: BorderSide(
      color: Colors.grey.withOpacity(0.2),
      width: 1,
    ),
            ),
            color: Colors.orange,
     
            child: Container(
              height: 300,
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
                      
                      decoration: InputDecoration(labelText: 'Password',),
                      obscureText: true,
                      controller: _passwordController,
                      validator: (value) {
                        if (value!.isEmpty || value.length <= 5) {
                          return "invalid";
                        }
                        return null;
                      },
                      onSaved: (value) {},
                    ),
                    TextFormField(
                      decoration:
                          InputDecoration(labelText: 'Confirm Password'),
                      obscureText: true,
                      validator: (value) {
                        if (value!.isEmpty ||
                            value != _passwordController.text) {
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
                    ),
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
