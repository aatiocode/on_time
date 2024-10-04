import 'package:flutter/material.dart';
import 'package:on_time/presentation/widgets/default_background.dart';

class SettingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: DefaultBackground().backgroundGradient(context),
          child: const Center(
            child: Text(
              'SCREEN SETTING',
              style: TextStyle(
                fontSize: 24, // Ukuran font
                fontWeight: FontWeight.bold, // Ketebalan font
                color: Colors.white, // Warna teks
              ),
            ),
          )),
    );
  }
}
