import 'package:flutter/material.dart';
import 'package:food_odering_app/themes/color.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Center(
        child: Column(
          children: [
            // top spacing
            Spacer(),

            // button
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/dashboard');
              },
              child: Container(
                decoration: BoxDecoration(
                  color: kPrimaryGreen,
                  borderRadius: BorderRadius.circular(6.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 50.0, vertical: 15.0),
                  child: Text(
                    'Get Started',
                    style: TextStyle(
                      color: kWhite,
                      fontSize: 18.0,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              ),
            ),
            // bottom spacing
            SizedBox(height: 20.0),
          ],
        ),
      ),
    ));
  }
}
