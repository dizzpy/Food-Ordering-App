import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_odering_app/pages/nav/account_page.dart';
import 'package:food_odering_app/pages/nav/home_page.dart';
import 'package:food_odering_app/pages/nav/orders_page.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,
        destinations: [
          NavigationDestination(
            icon: SvgPicture.asset(
              currentPageIndex == 0
                  ? 'lib/images/icons/home_filled.svg'
                  : 'lib/images/icons/home_outline.svg',
              width: 24,
              height: 24,
              // ignore: deprecated_member_use
              // color: currentPageIndex == 0 ? kPrimaryGreen : Colors.grey,
            ),
            label: 'Home',
          ),
          NavigationDestination(
            icon: SvgPicture.asset(
              currentPageIndex == 1
                  ? 'lib/images/icons/receipt_filled.svg'
                  : 'lib/images/icons/receipt_outline.svg',
              width: 24,
              height: 24,
              // ignore: deprecated_member_use
              // color: currentPageIndex == 1 ? kPrimaryGreen : Colors.grey,
            ),
            label: 'Orders',
          ),
          NavigationDestination(
            icon: SvgPicture.asset(
              currentPageIndex == 2
                  ? 'lib/images/icons/profile_filled.svg'
                  : 'lib/images/icons/profile_outline.svg',
              width: 24,
              height: 24,
              // ignore: deprecated_member_use
              // color: currentPageIndex == 2 ? kPrimaryGreen : Colors.grey,
            ),
            label: 'Account',
          ),
        ],
      ),
      body: IndexedStack(
        index: currentPageIndex,
        children: const [
          HomePage(), // Assuming this is the correct page
          OrderPage(),
          AccountPage(),
        ],
      ),
    );
  }
}
