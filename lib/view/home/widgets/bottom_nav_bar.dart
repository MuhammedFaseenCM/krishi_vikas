import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:krishi_vikas/view/utils/const_colors.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
        height: 50.0,
        color: primaryColor,
        backgroundColor: Colors.transparent,
        index: 2,
        items: [
          bottomNavIcon(Icons.home),
          bottomNavIcon(Icons.favorite),
          bottomNavIcon(Icons.add_circle_outline_outlined),
          bottomNavIcon(Icons.message_rounded),
          bottomNavIcon(Icons.person)
        ]);
  }

  Widget bottomNavIcon(icon) {
    return Icon(
      icon,
      color: kwhiteColor,
    );
  }
}
