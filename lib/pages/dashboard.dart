import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
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
              'lib/images/icons/home.svg',
              width: 24,
              height: 24,
            ),
            label: 'Home',
          ),
          NavigationDestination(
            icon: SvgPicture.asset(
              'lib/images/icons/receipt.svg',
              width: 24,
              height: 24,
            ),
            label: 'Orders',
          ),
          NavigationDestination(
            icon: SvgPicture.asset(
              'lib/images/icons/profile.svg',
              width: 24,
              height: 24,
            ),
            label: 'Account',
          ),
        ],
      ),
      body: [
        HomePage(),
        OrderPage(),
        AccountPage(),
      ][currentPageIndex],
    );
  }
}

// children: [
//             // Row location + cart icon

//             // search bar

//             // title "Recommend for you"

//             // items card rows

//             // banner

//             // food catogory tab bar
//           ],
