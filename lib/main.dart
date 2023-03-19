import 'package:flutter/material.dart';

import 'homescreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      initialRoute: 'home_screen',
      routes: {
        'home_screen': (context) => HomeScreen(),
      },
    );
  }
}