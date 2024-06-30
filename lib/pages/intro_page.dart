import 'package:flutter/material.dart';
import 'package:food_odering_app/themes/color.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Intro Page',
          style: TextStyle(color: kPrimaryGreen),
        ),
      ),
    );
  }
}
