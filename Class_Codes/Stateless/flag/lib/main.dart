import 'package:flutter/material.dart';
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
          title: const Text("Indian Flag",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w900
          ),),
          centerTitle: true,
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[
                  Colors.orange,
                  Colors.white,
                  Colors.green,
                ],
              ),
            ),

          ),
        ),

          body: Container(
             decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: <Color>[
                  Color.fromARGB(255, 188, 217, 240),
                  Colors.white,
                ],
              ),
            ),            
          child: Column(
            children: [
              const SizedBox(
                height: 150,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Pole
                  Container(
                    height: 400,
                    width: 20,
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(5)
                      )
                    ),
                  ),
                  
                  // Flag
                  Column(                  
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
                        child: Image.network(
                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRxiUYRa0CKAT9uQrmtkgd2_y7ke8uKWQPzUUb4JPhqbA&s",
                        ),
                      ),
                      Container(
                        height: 35,
                        width: 250,
                        color: Colors.green,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}