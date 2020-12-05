import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/login_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "gradient",
      initialRoute: Home.id,
      routes: {
        Home.id: (context) => Home(),
        Login.id: (context) => Login(),
      },
    );
  }
}
