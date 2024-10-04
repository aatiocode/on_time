import 'package:flutter/material.dart';
import 'package:on_time/helpers/colors_custom.dart';
import 'package:on_time/injection.dart';
import 'package:on_time/presentation/feature/home/home_screen.dart';
import 'package:on_time/presentation/feature/note/note_screen.dart';
import 'package:on_time/presentation/feature/onboarding/onboarding_screen.dart';
import 'package:on_time/presentation/feature/schedule/schedule_screen.dart';
import 'package:on_time/presentation/feature/splash/splash_screen.dart';
import 'package:on_time/utils/route_observer.dart';
import 'package:on_time/utils/routes.dart';

import 'injection.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  di.init();
  await getIt.allReady();

  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'on.time',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'OpenSans',
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: false,
          iconTheme: IconThemeData(color: ColorsCustom.primary),
          titleTextStyle: TextStyle(
              color: ColorsCustom.black,
              fontSize: 18,
              fontWeight: FontWeight.bold),
        ),
        useMaterial3: true,
      ),
      navigatorObservers: [routeObserver],
      onGenerateRoute: (RouteSettings settings) {
        switch (settings.name) {
          case Routes.ONBOARDING:
            return MaterialPageRoute(builder: (_) => OnboardingScreen());
          case Routes.HOME:
            return MaterialPageRoute(builder: (_) => HomeScreen());
          case Routes.SCHEDULE:
            return MaterialPageRoute(builder: (_) => ScheduleScreen());
          case Routes.NOTE:
            return MaterialPageRoute(builder: (_) => NoteScreen());
          default:
            return MaterialPageRoute(
              builder: (_) {
                return const Scaffold(
                  body: Center(
                    child: Text('Page not found'),
                  ),
                );
              },
            );
        }
      },
      home: const SplashScreen(),
    );
  }
}
