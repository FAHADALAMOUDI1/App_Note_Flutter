
import 'package:flutter/material.dart';
import 'package:flutter_note_app/auth/signup.dart';
import 'package:flutter_note_app/crud/addnote.dart';
import 'package:flutter_note_app/home/homepage.dart';

import 'auth/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // ignore: prefer_const_constructors
      home: Login(),
      theme: ThemeData(
        // ignore: deprecated_member_use
        elevatedButtonTheme:ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(backgroundColor: Colors.blue,)) ,
          
      ),
      routes: {
        "login" : (context) => const Login(),
        "signup" : (context) => const SignUp(),
        "homepage" : (context) => const Homepage(),
        "addnotes" : (context) => const AddNotes(),
      },
    );
  }
}

