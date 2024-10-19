import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
            title: const Text(
              "DailyFlash2",
              style: TextStyle(color: Colors.white),
            ),
            centerTitle: true,
            backgroundColor: Colors.black,
          ),
          body: Center(
            child: Container(
              height: 100,
              width: 100,
              decoration: const BoxDecoration(
                //borderRadius: BorderRadius.circular(25),
                color: Colors.red,
                 borderRadius: BorderRadius.only(
                              topRight: Radius.circular(40), 
                  
                ),
              ),
            ),
          ),
      )
    );
  }
}
