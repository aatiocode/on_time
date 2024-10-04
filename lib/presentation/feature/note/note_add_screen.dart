import 'package:flutter/material.dart';
import 'package:on_time/presentation/widgets/default_background.dart';

class NoteAddScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   leading: IconButton(
      //     icon: Icon(Icons.arrow_back),
      //     onPressed: () {
      //       Navigator.of(context).pop();
      //     },
      //   ),
      //   title: Text("Add Note"),
      //   // bottom: PreferredSize(
      //   //   preferredSize: const Size.fromHeight(1.0),
      //   //   child: Container(
      //   //     color: Colors.white,
      //   //     height: 1.0,
      //   //   ),
      //   // ),
      // ),
      body: Container(
        decoration: DefaultBackground().backgroundGradient(context),
        child: Text("kndskdjkshdjksjdksdj"),
      ),
    );
  }
}
