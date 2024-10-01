import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Indian Flag"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 540,
                width: 25,
                color: Colors.black, // Flag pole
              ),
              Container(
                height: 105,
                width: 250,
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // Saffron band
                    Container(
                      height: 35,
                      width: 250,
                      color: Colors.orange,
                    ),
                    // White band with Ashoka Chakra
                    Container(
                      height: 35,
                      width: 250,
                      color: Colors.white,
                      child: Center(
                        child: Image.network(
                          'https://upload.wikimedia.org/wikipedia/commons/thumb/1/17/Ashoka_Chakra.svg/1200px-Ashoka_Chakra.svg.png',
                          height: 30,
                          width: 30,
                        ),
                      ),
                    ),
                    // Green band
                    Container(
                      height: 35,
                      width: 250,
                      color: Colors.blue,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
