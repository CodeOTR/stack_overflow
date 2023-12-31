import 'package:flutter/material.dart';
import 'package:stack_overflow/questions/_57069641/home.dart';
import 'package:stack_overflow/questions/_68423299/home.dart';
import 'package:stack_overflow/questions/_76631380/home.dart';
import 'package:stack_overflow/questions/_76655579/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Question76655579(title: 'Test',),
    );
  }
}
