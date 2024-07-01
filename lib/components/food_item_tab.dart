import 'package:flutter/material.dart';
import 'package:food_odering_app/themes/color.dart';
import 'package:google_fonts/google_fonts.dart';

class SingleFoodTabItem extends StatelessWidget {

  final String tabItem;
  const SingleFoodTabItem({
    required this.tabItem,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 5),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(999),
          border: Border.all(
            color: kOutLine,
            width: 1,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 9),
          child: Text(
            tabItem,
            style: GoogleFonts.poppins(
              textStyle: TextStyle(),
            ),
          ),
        ),
      ),
    );
  }
}
