import 'package:car_rental_for_customer/app/route/route_name.dart';
import 'package:car_rental_for_customer/commons/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ScaffoldWithNavBar extends StatelessWidget {
  const ScaffoldWithNavBar({
    required this.child,
    Key? key,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: CustomColors.white,
        selectedItemColor: CustomColors.appBarColor,
        unselectedItemColor: CustomColors.silver,
        items: const [
          BottomNavigationBarItem(
            label: 'Trang chủ',
            icon: Icon(
              Icons.home_outlined,
            ),
            activeIcon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'Hoạt động',
            icon: Icon(
              Icons.receipt_long_outlined,
            ),
            activeIcon: Icon(Icons.receipt_long),
          ),
          BottomNavigationBarItem(
            label: 'Ví',
            icon: Icon(
              Icons.wallet_outlined,
            ),
            activeIcon: Icon(Icons.wallet),
          ),
          BottomNavigationBarItem(
            label: 'Thông báo',
            icon: Icon(
              Icons.notifications_outlined,
            ),
            activeIcon: Icon(Icons.notifications),
          ),
          BottomNavigationBarItem(
            label: 'Hồ sơ',
            icon: Icon(
              Icons.person_outline,
            ),
            activeIcon: Icon(Icons.person),
          ),
        ],
        currentIndex: _calculateSelectedIndex(context),
        onTap: (int idx) => _onItemTapped(idx, context),
      ),
    );
  }

  static int _calculateSelectedIndex(BuildContext context) {
    final String location = GoRouterState.of(context).location;

    if (location.startsWith('/home')) {
      return 0;
    }
    if (location.startsWith('/activity')) {
      return 1;
    }
    if (location.startsWith('/wallet')) {
      return 2;
    }
    if (location.startsWith('/notification')) {
      return 3;
    }

    if (location.startsWith('/profile')) {
      return 4;
    }

    return 0;
  }

  void _onItemTapped(int index, BuildContext context) {
    switch (index) {
      case 0:
        context.goNamed(RouteName.home);
        break;
      case 1:
        context.goNamed(RouteName.activity);
        break;
      case 2:
        context.goNamed(RouteName.wallet);
        break;
      case 3:
        context.goNamed(RouteName.notification);
        break;
      case 4:
        context.goNamed(RouteName.profile);
        break;
    }
  }
}
