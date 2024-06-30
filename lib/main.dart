import 'package:flutter/material.dart';
import 'package:food_odering_app/pages/dashboard.dart';
import 'package:food_odering_app/pages/intro_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DashboardPage(),
      theme: ThemeData(
        useMaterial3: true,
      ),
      routes: {
        '/intro': (context) => const IntroPage(),
        '/dashboard': (context) => const DashboardPage(),
      },
    );
  }
}
