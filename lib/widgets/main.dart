import 'package:flutter/material.dart';
import 'package:project/auth.dart';
import 'package:project/root_page.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'RemindMe',
        theme: ThemeData(primarySwatch: Colors.deepPurple),
        home: RootPage(auth: Auth()),
       );
  }
}