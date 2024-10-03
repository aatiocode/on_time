import 'package:on_time/examples/examples.dart';
import 'package:flutter/material.dart';
import 'package:on_time/timeline.dart';

class DateTimelineScreen extends StatefulWidget {
  const DateTimelineScreen({super.key});

  @override
  State<DateTimelineScreen> createState() => _DateTimelineScreenState();
}

class _DateTimelineScreenState extends State<DateTimelineScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Date Timeline'),
      ),
      body: const SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 32.0),
            EasyInfiniteDateTimeLineExample(),
            Divider(height: 32),
            TimelineScreen(),
            SizedBox(height: 32.0),
          ],
        ),
      ),
    );
  }
}