import 'package:final_exam_650710520/answer1.dart';
import 'package:final_exam_650710520/answer2.dart';
//import 'package:final_exam_650710520/introduce_myself/profile_card.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const Answer1(),
    );
  }
}
