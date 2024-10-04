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
          contentsAlign: ContentsAlign.basic,
          contentsBuilder: (context, index) =>
          Card( child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Text('Timeline Event $index'),
          )),
          oppositeContentsBuilder: (context, index) => Padding(
            padding: const EdgeInsets.all(24.0),
            child: Text('06:06\n16:16'),
          ),
          itemCount: 13,
        ),
      theme: TimelineThemeData(
        connectorTheme: ConnectorThemeData(
          color: Color(0xFF7E64FF)
        ),
        indicatorTheme: IndicatorThemeData(
            color: Color(0xFF7E64FF)
        )
      ),
    );
  }
}