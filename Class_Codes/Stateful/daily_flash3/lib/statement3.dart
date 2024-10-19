import 'dart:ui';

import 'package:daily_flash3/statement1.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

 
  @override
  Widget build(BuildContext context) {
    return const  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: dailyFlash(),
    );
  }
}

class dailyFlash extends StatefulWidget {
  const dailyFlash({super.key});

  @override
  State<dailyFlash> createState() => _dailyFlashState();
}

class _dailyFlashState extends State<dailyFlash> {

   bool tapped=false;
  void tappedContainer(){
    setState(() {
      tapped=true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title:const Text("DailyFlash3",
        style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: GestureDetector(
        onTap: () {
          tappedContainer();
          setState(() {
            
          });
        },
        child: Center(
          child: Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              gradient:const  LinearGradient              (
                colors: [Colors.red, Colors.orange, Colors.yellow,Colors.green,Colors.blue, Colors.brown,Colors.purple]),
              border: Border.all(
                width: 10,
                color: tapped? Colors.green : Colors.red
              )     
            ),
          ),
        ),
      ),

    );
  }
}