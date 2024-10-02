import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title:
              const Text("Border",
              style:TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.w800
              ),
          ),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 42, 32, 59),          
        ),
        body:
         SizedBox(
          width: MediaQuery.of(context).size.width,
           child: Column(
            
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 300,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.black,
                  border:Border.all(
                    color: Colors.red,
                    width: 10
                  ),
                  borderRadius: BorderRadius.circular(20),                  
                  )
                ),
            ],
                   ),
         ),
      ),
    );
  }
}