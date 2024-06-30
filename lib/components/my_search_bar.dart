import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_odering_app/themes/color.dart';

class MySearchBar extends StatelessWidget {
  const MySearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: kBgGray,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: kOutLine,
          width: 1,
        ),
      ),
      child: Padding(
        padding:
            const EdgeInsets.symmetric(horizontal: 15, vertical: 6),
        child: Row(
          children: [
            // search icon
            SvgPicture.asset(
              'lib/images/icons/search.svg',
              height: 24,
              width: 24,
              // ignore: deprecated_member_use
              color: kTextGray,
            ),
            const SizedBox(width: 10),
    
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Search',
                  hintStyle: TextStyle(
                    color: kTextLightGray,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
    
            // textfield
          ],
        ),
      ),
    );
  }
}
