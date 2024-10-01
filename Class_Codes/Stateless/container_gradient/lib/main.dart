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
          title: const Text("Column Demo",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w900,
            color: Colors.white
          ),
          ),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(width: 1000,),
              Container(
                height: 200,
                width: 200,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                    colors: [
                    Color.fromARGB(255, 161, 186, 34),
                    Colors.black
                  ],
                  )
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                height: 200,
                width: 200,
                decoration: const BoxDecoration(
                  gradient: RadialGradient(
                    colors: [
                    Color.fromARGB(255, 20, 158, 208),
                    Colors.black
                  ],
                  )
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                height: 200,
                width: 200,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                    Colors.red,
                    Color.fromARGB(255, 23, 21, 21)
                  ],
                  )
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                height: 200,
                width: 200,
                decoration: const BoxDecoration(
                  gradient: SweepGradient(
                    colors: [
                    Color.fromARGB(255, 171, 7, 53),
                    Color.fromARGB(255, 200, 91, 91)
                  ],)
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                height: 200,
                width: 200,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                    Colors.red,
                    Colors.black
                  ],
                  )
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                height: 200,
                width: 200,
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                    Colors.red,
                    Colors.black
                  ],
                  )
                ),
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
        ),
      );
  }
}
