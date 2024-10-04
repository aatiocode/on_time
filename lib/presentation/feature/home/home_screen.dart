import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:on_time/presentation/feature/splash/splash_screen.dart';
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
      (Icons.note, "Note", NextScreen()),
      (Icons.settings, "Setting", NextScreen()),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: menu[selectedIndex].$3,
      bottomNavigationBar: CustomBottomNav(
        menu: menu,
        onTap: onItemTapped,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFF7E64FF),
        onPressed: () {
          // Navigator.pushNamed(context, Routes.ATTENDANCE);
        },
        child: Icon(Icons.add, color: Colors.white),
      ),
    );
  }

  Widget homeBody() {
    return Container(
        decoration: DefaultBackground().backgroundGradient(context),
        child: SafeArea(
          child: ListView(
            children: [
              const SizedBox(height: 20),
              // TopBar(),
              // GoldMenu(),
              // MenuGrid(),
            ],
          ),
        ));
  }
}

class NextScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Next Screen'),
      ),
      body: Center(
        child: Text(
          'This is the next screen!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
