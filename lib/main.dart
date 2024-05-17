import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:lesson_38/main/home_page.dart';
import 'package:lesson_38/pages/homepage38.dart';
import 'package:lesson_38/pages/login_page.dart';


void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LogInPage(),
    );
  }
}
