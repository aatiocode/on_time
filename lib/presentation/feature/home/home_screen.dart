import 'package:flutter/material.dart';
import 'package:on_time/presentation/feature/note/note_screen.dart';
import 'package:on_time/presentation/feature/setting/setting_screen.dart';
import 'package:on_time/presentation/widgets/custom_bottom_nav.dart';
import 'package:on_time/presentation/widgets/default_background.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<(IconData icon, String label, Widget page)> menu = [];

  int selectedIndex = 0;

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
    menu = [
      (Icons.calendar_month, "Schedule", homeBody()),
      (Icons.note, "Note", NoteScreen()),
      (Icons.settings, "Setting", SettingScreen()),
    ];
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
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFF7E64FF),
        onPressed: () {
          // Navigator.pushNamed(context, Routes.ATTENDANCE);
        },
        child: const Icon(Icons.add, color: Colors.white),
      ),
    );
  }

  Widget homeBody() {
    return Container(
        decoration: DefaultBackground().backgroundGradient(context),
        child: SafeArea(
          child: ListView(
            children: const [
              SizedBox(height: 20),
            ],
          ),
        ));
  }
}
