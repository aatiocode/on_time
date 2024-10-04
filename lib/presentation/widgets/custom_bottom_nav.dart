import 'package:flutter/material.dart';
import 'package:on_time/helpers/colors_custom.dart';

class CustomBottomNav extends StatelessWidget {
  const CustomBottomNav({super.key, required this.menu, required this.onTap});

  final List<(IconData icon, String label, Widget page)> menu;
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
        onTap: onTap,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 14,
        unselectedFontSize: 12,
        backgroundColor: Color(0xFF7E64FF),
        elevation: 5,
        items: menu.map((item) {
          return BottomNavigationBarItem(
            icon: Icon(item.$1, color: Colors.white),
            // SvgPicture.asset(
            //   item.$1,
            //   width: 20,
            //   height: 20,
            // ),
            label: item.$2,
          );
        }).toList(),
      ),
    );
  }
}
