import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';

class TimelineScreen extends StatefulWidget {
  const TimelineScreen({super.key});

  @override
  State<TimelineScreen> createState() => _TimelineScreenState();
}

class _TimelineScreenState extends State<TimelineScreen> {

  @override
  Widget build(BuildContext context) {
    return FixedTimeline.tileBuilder(
        builder: TimelineTileBuilder.fromStyle(
          contentsAlign: ContentsAlign.alternating,
          contentsBuilder: (context, index) => Padding(
            padding: const EdgeInsets.all(24.0),
            child: Text('Timeline Event $index'),
          ),
          itemCount: 13,
        ),
      theme: TimelineThemeData(
        connectorTheme: ConnectorThemeData(
          color: Colors.green
        ),
        indicatorTheme: IndicatorThemeData(
            color: Colors.green
        )
      ),
    );
  }
}