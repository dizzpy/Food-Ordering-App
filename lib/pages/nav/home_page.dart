import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_odering_app/themes/color.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 25),
            child: Column(
              children: [
                // row search bar + cart icon
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: kPrimaryGreen,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // icon
                            Row(
                              children: [
                                SvgPicture.asset(
                                  'lib/images/icons/location.svg',
                                  // ignore: deprecated_member_use
                                  color: kTextGray,
                                  width: 24,
                                  height: 24,
                                ),
                                const SizedBox(width: 8),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Pickup at',
                                        style: TextStyle(color: Colors.white)),
                                    Text('Route 66 Grill House',
                                        style: TextStyle(color: Colors.white)),
                                  ],
                                ),
                              ],
                            ),
                            Text('Edit', style: TextStyle(color: Colors.white)),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                        width:
                            8), // Add some spacing between the green box and the cart icon
                    SvgPicture.asset('lib/images/icons/cart.svg')
                  ],
                ),

                // search bar

                // Recommended for you title

                // food card row

                // add banner

                // food tab bar

                // horizontal list of food cards
              ],
            ),
          ),
        ),
      ),
    );
  }
}
