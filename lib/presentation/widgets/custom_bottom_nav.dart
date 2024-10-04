import 'package:flutter/material.dart';
import 'package:on_time/helpers/colors_custom.dart';

class CustomBottomNav extends StatelessWidget {
  const CustomBottomNav(
      {super.key,
      required this.menu,
      required this.onTap,
      required this.currentIndex});

  final List<(IconData icon, String label, Widget page)> menu;
  final int currentIndex;
  final Function(int) onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: ColorsCustom.borderSoft,
            width: 0.5,
          ),
        ),
      ),
      child: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: onTap,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 14,
        unselectedFontSize: 12,
        backgroundColor: const Color(0xFF7E64FF),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        elevation: 5,
        items: menu.map((item) {
          return BottomNavigationBarItem(
            icon: Icon(item.$1, color: Colors.white),
            label: item.$2,
          );
        }).toList(),
      ),
    );
  }
}
