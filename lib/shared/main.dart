import 'package:flutter/material.dart';
import '../massenger2.dart';
import '../massenger3.dart';
import '../massenger1.dart';
import 'package:messnger_sample/layout/buttonbar.dart';

void main() {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        appBarTheme: AppBarTheme(backgroundColor: Color.fromARGB(255, 110, 189, 253)),
      ),
      home: Screen1(),
    );
  }
}