import 'package:flutter/material.dart';
import 'package:tiktok/constans.dart';
import 'package:tiktok/views/screen/auth/login_screen.dart';
import 'package:tiktok/views/screen/auth/signup_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TikTok Clone',
theme: ThemeData.dark().copyWith(
  scaffoldBackgroundColor: backgroundColor,
),
      home: SignupScreen(),
    );
  }
}

