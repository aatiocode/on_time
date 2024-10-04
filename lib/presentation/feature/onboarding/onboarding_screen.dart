import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:on_time/presentation/widgets/default_background.dart';

class OnboardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: DefaultBackground().backgroundGradient(context),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/images/svg/logo.svg',
                semanticsLabel: 'logo',
              ),
              const SizedBox(height: 200),
              const Text(
                'Make your self\nmore on time',
                style: TextStyle(
                  fontFamily: 'OpenSans',
                  fontSize: 36,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 200),
              ElevatedButton(
                onPressed: () {
                  // Aksi ketika tombol ditekan
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) =>
                          NextScreen(), // Ganti dengan screen berikutnya
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 120, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text(
                  'START',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontFamily: 'OpenSansBold',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
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
