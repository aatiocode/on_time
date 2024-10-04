import 'package:floating_action_bubble/floating_action_bubble.dart';
import 'package:flutter/material.dart';
import 'package:on_time/presentation/feature/note/note_screen.dart';
import 'package:on_time/presentation/widgets/custom_bottom_nav.dart';
import 'package:on_time/utils/routes.dart';

import '../schedule/schedule_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  List<(IconData icon, String label, Widget page)> menu = [];

  int selectedIndex = 0;
  late Animation<double> _animation;
  late AnimationController _animationController;

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  void initState() {
    menu = [
      (Icons.calendar_month, "Schedule", ScheduleScreen()),
      (Icons.note, "Note", NoteScreen()),
    ];

    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 260),
    );

    final curvedAnimation =
        CurvedAnimation(curve: Curves.easeInOut, parent: _animationController);
    _animation = Tween<double>(begin: 0, end: 1).animate(curvedAnimation);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: menu[selectedIndex].$3,
        bottomNavigationBar: CustomBottomNav(
          menu: menu,
          onTap: onItemTapped,
          currentIndex: selectedIndex,
        ),
        floatingActionButton: FloatingActionBubble(
          // Menu items
          items: <Bubble>[
            // Floating action menu item
            Bubble(
              title: "Schedule",
              iconColor: Colors.white,
              bubbleColor: const Color(0xFF7E64FF),
              icon: Icons.edit_calendar,
              titleStyle: const TextStyle(fontSize: 16, color: Colors.white),
              onPress: () {
                Navigator.pushNamed(context, Routes.SCHEDULE);
              },
            ),
            // Floating action menu item
            Bubble(
              title: "Note",
              iconColor: Colors.white,
              bubbleColor: const Color(0xFF7E64FF),
              icon: Icons.note_add,
              titleStyle: const TextStyle(fontSize: 16, color: Colors.white),
              onPress: () {
                Navigator.pushNamed(context, Routes.NOTE);
              },
            ),
          ],
          // animation controller
          animation: _animation,
          // On pressed change animation state
          onPress: () => _animationController.isCompleted
              ? _animationController.reverse()
              : _animationController.forward(),

          // Floating Action button Icon color
          iconColor: Colors.white,
          // Flaoting Action button Icon
          iconData: Icons.add,
          backGroundColor: const Color(0xFF7E64FF),
        ));
  }
}
