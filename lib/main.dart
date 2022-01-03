import 'package:flutter/material.dart';
import 'Eggrollpage/Eggrollpage.dart';
import 'shopingapp/my_test_page.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: MyTestPage(),
    );
  }
}

