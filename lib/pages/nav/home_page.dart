import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_odering_app/themes/color.dart';
import 'package:google_fonts/google_fonts.dart';

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
                          borderRadius: BorderRadius.circular(9),
                          border: Border.all(
                            color: kOutLine,
                            width: 2,
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                            vertical: 10.0,
                            horizontal: 15,
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
                                    width: 28,
                                    height: 28,
                                  ),
                                  const SizedBox(width: 10),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Pickup at',
                                        style: GoogleFonts.outfit(
                                          textStyle: TextStyle(
                                            fontSize: 13,
                                            color: kBlack,
                                            fontWeight: FontWeight.w400,
                                          ),
                                        ),
                                      ),
                                      Text(
                                        'Route 66 Grill House',
                                        style: TextStyle(
                                          color: kTextGray,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              GestureDetector(
                                onTap: () => {},
                                child: Text(
                                  'Edit',
                                  style: TextStyle(
                                      color: kPrimaryGreen,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 15),
                    GestureDetector(
                      onTap: () => {},
                      child: SvgPicture.asset(
                        'lib/images/icons/cart.svg',
                        height: 28,
                        width: 28,
                        // ignore: deprecated_member_use
                        color: kTextGray,
                      ),
                    )
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
