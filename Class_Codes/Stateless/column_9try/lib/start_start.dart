import 'package:flutter/material.dart';
void main(){
  runApp(const ColumnApps());
}

class ColumnApps extends StatelessWidget{
  const ColumnApps({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home :Scaffold(
        appBar: AppBar(
          title: const Text("Columns start start",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.w800
          ),),
          backgroundColor: Color.fromARGB(255, 19, 12, 70),
          centerTitle: true,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 250,
              width: 250,
              color: Color.fromARGB(255, 44, 86, 225),
            ),
          ],
        ),
      )
    );
  }
}