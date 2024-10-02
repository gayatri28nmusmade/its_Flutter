import "package:flutter/material.dart";

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("StaticListView",
          style: TextStyle(
            fontSize:30,
            fontWeight: FontWeight.w800,
            color: Colors.white
          ),
          ),
          backgroundColor: const Color.fromARGB(255, 63, 58, 12),
          centerTitle: true,
        ),
        body: Align(
          alignment: Alignment.topLeft,
          child: ListView(
            children: [
              Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRlyIHeDgDtRVpdlLXKpIVSA5O4ND-eER48dg&s",
              height: 300,
              width: 300,),
              const Icon(
                Icons.favorite,
                color: Colors.red,
              ),
              const Text("Amazing",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w500
              ),
              ),
              Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRB0QlbZgacwjaMJDDhx2EKcPiwLDY6talTHQ&s"),
              GestureDetector(
                onTap: (){
                  print("ButtonIsPressed");
                },
                child: Container(
                  height: 50,
                  color: Colors.yellow,
                  child: const Text("Press me"),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}