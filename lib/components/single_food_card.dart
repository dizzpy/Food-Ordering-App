import 'package:flutter/material.dart';
import 'package:food_odering_app/themes/color.dart';
import 'package:google_fonts/google_fonts.dart';

class SingleFoodCard extends StatelessWidget {
  const SingleFoodCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      decoration: BoxDecoration(
        color: kWhite,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: kOutLine,
          width: 1,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(13.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // image
            ClipRRect(
              borderRadius: BorderRadius.circular(9),
              child: Image.network(
                'https://www.thecookierookie.com/wp-content/uploads/2023/04/featured-stovetop-burgers-recipe.jpg',
                width: 170,
                height: 170,
                fit: BoxFit.cover,
              ),
            ),

            // food name
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                'Burger',
                style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                    fontSize: 18,
                    color: kBlack,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),

            // row of price and add button
            Row(
              children: [Text('16.99')],
            ),
          ],
        ),
      ),
    );
  }
}
