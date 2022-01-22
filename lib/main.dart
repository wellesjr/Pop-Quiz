import 'package:flutter/material.dart';
import 'package:popquiz/modules/challenge/challenge_page.dart';
import 'package:popquiz/modules/error/error_page.dart';
import 'package:popquiz/modules/home/home_page.dart';
import 'package:popquiz/modules/login/login_page.dart';
import 'package:popquiz/modules/models/quiz/quiz_model.dart';

import 'package:popquiz/modules/splash/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pop Quiz',
      theme:
          ThemeData(primarySwatch: Colors.orange, primaryColor: Colors.orange),
      debugShowCheckedModeBanner: false,
      initialRoute: "/splash",
      routes: {
        "/splash": (context) => const SplashPage(),
        "/login": (context) => const LoginPage(),
        "/error": (context) => const ErrorPage(),
        "/homepage": (context) => const HomePage(),
      },
    );
  }
}
