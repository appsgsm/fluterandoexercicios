import 'package:flutter/material.dart';
import 'package:loginpage/screens/tinder_login.dart';

import 'screens/flutter_login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Pages',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const TinderLogin(),
    );
  }
}
