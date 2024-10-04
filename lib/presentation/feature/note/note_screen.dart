import 'package:flutter/material.dart';
import 'package:on_time/presentation/widgets/default_background.dart';

class NoteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> items = [
      {'title': 'Note xyz abc', 'deskripsi': '01/02/2024'},
      {'title': 'Note xyz abc', 'deskripsi': '01/02/2024'},
      {'title': 'Note xyz abc', 'deskripsi': '01/02/2024'},
      {'title': 'Note xyz abc', 'deskripsi': '01/02/2024'},
      {'title': 'Note xyz abc', 'deskripsi': '01/02/2024'},
    ];

    return Scaffold(
      body: Container(
        decoration: DefaultBackground().backgroundGradient(context),
        child: Column(
          children: [
            SizedBox(height: 50), // Jarak di atas search
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search...',
                  // hintStyle: TextStyle(
                  //   color: Colors.white
                  // ),
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(100.0),
                    borderSide: BorderSide.none,
                  ),
                  filled: true,
                  fillColor: Color.fromRGBO(205, 194, 254, 50),
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: items.length, // Berdasarkan jumlah item di list
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(126, 100, 255, 50),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            offset: Offset(0, 4),
                            blurRadius: 4,
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0), // Padding dalam box
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              items[index]['title']!, // Mengambil title dari list
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                            SizedBox(height: 8), // Jarak antara title dan subtitle
                            Text(
                              items[index]['deskripsi']!, // Mengambil deskripsi dari list
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
