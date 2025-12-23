import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DigitalIDCard(),
    );
  }
}

class DigitalIDCard extends StatelessWidget {
  const DigitalIDCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F2F7),
      appBar: AppBar(
        title: const Text(
          "Digital ID Card",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF6B8A99),
      ),
      body: Center(
        child: Card(
          elevation: 6,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          margin: const EdgeInsets.all(20),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                CircleAvatar(
                  radius: 45,
                  backgroundImage: AssetImage("image/picture.jpg"),
                ),
                SizedBox(height: 12),
                Text(
                  "Sumaiya Tabassum",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 6),
                Text(
                  "Batch: 62th, Department of CSE",
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(height: 12),
                Divider(),
                ListTile(
                  leading: Icon(Icons.person),
                  title: Text("ID: 0182320012101336"),
                ),
                ListTile(
                  leading: Icon(Icons.email),
                  title: Text("Email: sumaiya@gmail.com"),
                ),
                ListTile(
                  leading: Icon(Icons.phone),
                  title: Text("Phone: +8801711110000"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
