import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';

class EasyInfiniteDateTimeLineExample extends StatefulWidget {
  const EasyInfiniteDateTimeLineExample({super.key});

  @override
  State<EasyInfiniteDateTimeLineExample> createState() =>
      _EasyInfiniteDateTimeLineExampleState();
}

class _EasyInfiniteDateTimeLineExampleState
    extends State<EasyInfiniteDateTimeLineExample> {
  /// Controller for the infinite date time line.
  ///
  /// This controller is used to control the infinite date time line. It provides
  /// methods to animate to a specific date and jump to a specific date.
  final EasyInfiniteDateTimelineController _controller =
  EasyInfiniteDateTimelineController();

  DateTime? _focusDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    // Get the current date and time
    DateTime now = DateTime.now();

    // Get the current year as an integer
    int currentYear = now.year;
    return Column(
      children: [
        EasyInfiniteDateTimeLine(
          locale: "id_ID",
          activeColor: Colors.white,
          selectionMode: const SelectionMode.autoCenter(),
          controller: _controller,
          firstDate: DateTime(currentYear),
          focusDate: _focusDate,
          lastDate: DateTime(currentYear, 12, 31),
          onDateChange: (selectedDate) {
            setState(() {
              _focusDate = selectedDate;
            });
          },
          dayProps: const EasyDayProps(
              inactiveDayStyle: DayStyle(
                decoration: BoxDecoration(
                  color: Color(0xFF7E64FF)
                ),
                dayStrStyle: TextStyle(color: Colors.white),
                dayNumStyle: TextStyle(color: Colors.white),
                monthStrStyle: TextStyle(color: Colors.white),
              ),
            todayStyle: DayStyle(
              decoration: BoxDecoration(
                  color: Color(0xFF7E64FF)
              ),
              dayStrStyle: TextStyle(color: Colors.white),
              dayNumStyle: TextStyle(color: Colors.white),
              monthStrStyle: TextStyle(color: Colors.white),
            )
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        Column(
          children: [
            // ElevatedButton(
            //   onPressed: () {
            //     _controller.animateToFocusDate();
            //   },
            //   child: const Text('Animate To Focus Date'),
            // ),
            // ElevatedButton(
            //   onPressed: () {
            //     _controller.animateToCurrentData();
            //   },
            //   child: const Text('Animate To Current Date'),
            // ),
            // ElevatedButton(
            //   onPressed: () {
            //     _controller.animateToDate(DateTime(2024, 6, 5));
            //   },
            //   child: const Text('Animate To 2024-6-5 '),
            // ),
          ],
        ),
      ],
    );
  }
}