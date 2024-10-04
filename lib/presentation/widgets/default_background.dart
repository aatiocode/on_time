import 'package:flutter/material.dart';

class DefaultBackground {
  backgroundGradient(BuildContext context) {
    return const BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Color(0xFF2A2A2E),
          Color(0xFF1F1338),
          Color(0xFF000000),
        ],
      ),
    );
  }
}
