import 'package:flutter/material.dart';
import 'package:popquiz/modules/login/login_page.dart';
import 'package:popquiz/modules/splash/splash_page.dart';
import 'package:popquiz/theme/app_theme.dart';

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
        // "/error": (context) => ErrorPage(),
        // "/homepage": (context) => HomePage(),
      },
    );
  }
}
