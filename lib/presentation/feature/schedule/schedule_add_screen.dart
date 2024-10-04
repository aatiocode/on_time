import 'package:flutter/material.dart';

class ScheduleAddScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController titleController = TextEditingController();
  final TextEditingController placeController = TextEditingController();
  final TextEditingController notesController = TextEditingController();

  // Variables to store selected values
  bool isFullDay = false;
  DateTime? startDate;
  DateTime? finishDate;
  String? repeatValue;
  String? reminderValue;

  // Options for dropdowns
  final List<String> repeatOptions = ['Never', 'Daily', 'Weekly', 'Monthly'];
  final List<String> reminderOptions = ['None', '5 minutes before', '10 minutes before', '30 minutes before'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Schedule Form'),
        actions: [
          IconButton(
            icon: Icon(Icons.check),
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                // Save the form data
                // You can add your save logic here
                Navigator.pop(context);
              }
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Title
              TextFormField(
                controller: titleController,
                decoration: InputDecoration(labelText: 'Title'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a title';
                  }
                  return null;
                },
              ),

              // Full Day
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Full Day'),
                  Switch(
                    value: isFullDay,
                    onChanged: (value) {
                      isFullDay = value;
                    },
                  ),
                ],
              ),

              // Start From
              ListTile(
                title: Text('Start From: ${startDate != null ? startDate!.toLocal().toString().split(' ')[0] : 'Select Date'}'),
                trailing: Icon(Icons.calendar_today),
                onTap: () async {
                  final DateTime? picked = await showDatePicker(
                    context: context,
                    initialDate: startDate ?? DateTime.now(),
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2101),
                  );
                  if (picked != null && picked != startDate) {
                    startDate = picked;
                  }
                },
              ),

              // Finish
              ListTile(
                title: Text('Finish: ${finishDate != null ? finishDate!.toLocal().toString().split(' ')[0] : 'Select Date'}'),
                trailing: Icon(Icons.calendar_today),
                onTap: () async {
                  final DateTime? picked = await showDatePicker(
                    context: context,
                    initialDate: finishDate ?? DateTime.now(),
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2101),
                  );
                  if (picked != null && picked != finishDate) {
                    finishDate = picked;
                  }
                },
              ),

              // Repeat
              DropdownButtonFormField<String>(
                decoration: InputDecoration(labelText: 'Repeat'),
                value: repeatValue,
                onChanged: (String? newValue) {
                  repeatValue = newValue!;
                },
                items: repeatOptions.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),

              // Reminder
              DropdownButtonFormField<String>(
                decoration: InputDecoration(labelText: 'Reminder'),
                value: reminderValue,
                onChanged: (String? newValue) {
                  reminderValue = newValue!;
                },
                items: reminderOptions.map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                }).toList(),
              ),

              // Place
              TextFormField(
                controller: placeController,
                decoration: InputDecoration(labelText: 'Place'),
              ),

              // Notes
              TextFormField(
                controller: notesController,
                decoration: InputDecoration(labelText: 'Notes'),
                maxLines: 3,
              ),

              SizedBox(height: 20), // Spacer
            ],
          ),
        ),
      ),
    );
  }
}
