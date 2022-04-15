import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
//import 'screens/home_screen.dart';
import 'login_screen.dart';
import 'signup_screen.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Login",
      theme: ThemeData(
        primaryColor: Colors.amber,
      ),
      home: LoginScreen(),
      routes: {
        SignupScreen.routeName: (ctx) => SignupScreen(),
        LoginScreen.routeName: (ctx) => LoginScreen(),
        //HomeScreen.routeName: (ctx) => HomeScreen(),
      },
    );
  }
}
