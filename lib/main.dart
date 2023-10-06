import 'package:carrot/pages/join_page.dart';
import 'package:carrot/pages/login_page.dart';
import 'package:carrot/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme(),
      initialRoute: "/join", // 앱 처음 시작화면
      routes: {
        "/login": (context) => LoginPage(),
        "/join": (context) => JoinPage(),
        // "/home": (context) => HomePage(),
      },
    );
  }
}
