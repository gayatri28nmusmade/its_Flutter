import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Space Scenerios",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.w800
          ),
          ),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 206, 189, 29),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 150,
              width: 150,
              color: Colors.amber,
            ),
            Container(
              height: 150,
              width: 150,
              color: Colors.amber,
            ),
            Container(
              height: 150,
              width: 150,
              color: Colors.amber,
            ),
          ],
        )
      ),
    );
  }
}
