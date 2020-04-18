import 'package:flutter/material.dart';
import 'Login.dart';
import 'Profil.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Login(),
      routes: <String, WidgetBuilder>{
        '/Profil': (BuildContext context) => new MyProfil(),
      },
    );
  }
}
