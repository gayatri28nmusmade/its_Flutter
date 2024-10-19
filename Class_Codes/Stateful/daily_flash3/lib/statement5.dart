import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        
         appBar: AppBar(
        title:const Text("DailyFlash3",
        style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
        body: Center(
          child: Container(
            width: 200,
            height: 200,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                colors: [Colors.red, Colors.blue],
                stops: [0.5, 0.5], // Sharp transition at the middle
                //begin: Alignment.centerLeft,
                //end: Alignment.centerRight,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
