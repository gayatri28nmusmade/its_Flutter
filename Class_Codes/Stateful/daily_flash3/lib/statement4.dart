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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title:const Text("DailyFlash3",
        style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Container(
          height: 200,
          width: 200,
          decoration:BoxDecoration(
            color: Colors.red,

            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 10,
                offset: const Offset(0, -5)

              )
            ]
          ),
        
        ),
      )

    );
  }
}