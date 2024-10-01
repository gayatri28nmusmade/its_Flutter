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
          title: const Text("Rows center center",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.w800
          ),),
          backgroundColor: const Color.fromARGB(255, 29, 15, 23),
          centerTitle: true,
        ),
        body: Container(
          height: MediaQuery.of(context).size.height,
          color: const Color.fromARGB(255, 185, 73, 135),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 250,
                width: 250,
                color: const Color.fromARGB(255, 105, 15, 65),
              ),
            ],
          ),
        ),
      )
    );
  }
}