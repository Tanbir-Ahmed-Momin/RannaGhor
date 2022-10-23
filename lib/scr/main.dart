import 'package:flutter/material.dart';
import 'package:ranna_ghor/scr/screens/login.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ranna Ghor',
      theme: ThemeData(
        
        //primarySwatch: Colors.red,
        primaryColor: Colors.black,
      ),
      home:LoginScreen(),
    );
  }
}

