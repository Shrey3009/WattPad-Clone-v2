import 'package:flutter/material.dart';
//import 'screens/home_screen.dart';
import 'login_screen.dart';
import 'signup_screen.dart';



void main()  => runApp(MyApp());

class MyApp extends StatelessWidget{
  Widget build(BuildContext context){
    return MaterialApp(
      

        title: "Login",
        theme: ThemeData(
          primaryColor: Colors.amber,
        ),
       home: LoginScreen() ,
       routes: {
         SignupScreen.routeName: (ctx) => SignupScreen(),
         LoginScreen.routeName: (ctx) => LoginScreen(),
         //HomeScreen.routeName: (ctx) => HomeScreen(),

       },
      );
    }
}
