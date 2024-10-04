import 'package:flutter/material.dart';
import 'package:on_time/presentation/widgets/timeline.dart';
import '../../widgets/date_time_line.dart';
import '../../widgets/default_background.dart';

class ScheduleScreen extends StatefulWidget {
  const ScheduleScreen({super.key});
  @override
  State<ScheduleScreen> createState() => _ScheduleScreenState();
}
class _ScheduleScreenState extends State<ScheduleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: DefaultBackground().backgroundGradient(context),
        child: const SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 32.0),
              EasyInfiniteDateTimeLineExample(),
              Divider(height: 32),
              TimelineScreen(),
              SizedBox(height: 32.0),
            ],
          ),
        ),
      ),
    );
  }
}
