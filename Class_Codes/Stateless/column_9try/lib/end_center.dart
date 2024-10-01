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
          title: const Text("Columns end center",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
            fontWeight: FontWeight.w800
          ),),
          backgroundColor: const Color.fromARGB(255, 19, 12, 70),
          centerTitle: true,
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          color: const Color.fromARGB(255, 142, 177, 206),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end ,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              
              Container(
                height: 250,
                width: 250,
                color: Color.fromARGB(255, 44, 86, 225),
              ),
            ],
          ),
        ),
      )
    );
  }
}