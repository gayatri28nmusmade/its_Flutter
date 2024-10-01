import 'package:flutter/material.dart';
void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
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
                color: Colors.black,
              ),
              Container(
                height: 105,
                width: 250,
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 35,
                width: 250,
                color: Colors.orange,
              ),
              Container(
                height: 35,
                width: 250,
                color: Colors.white,
                child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRxiUYRa0CKAT9uQrmtkgd2_y7ke8uKWQPzUUb4JPhqbA&s"),              ),
              Container(
                height: 35 ,
                width: 250,
                color: Colors.green,
              ),
            ],
                ),
              )
            ],
          )
          )
        ),
        );
  }
}