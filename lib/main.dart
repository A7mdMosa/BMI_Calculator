import 'package:flutter/material.dart';

import 'screens/input_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: InputPage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0XFF123135),
        scaffoldBackgroundColor: Color(0XFF003D48),
      ),
    );
  }
}
