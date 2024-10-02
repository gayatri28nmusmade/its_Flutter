import "package:flutter/material.dart";
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
              const Text("Images",
              style:TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.w800
              ),
          ),
          centerTitle: true,
          backgroundColor: Colors.deepPurple,          
        ),
        body:
         SizedBox(
          width: MediaQuery.of(context).size.width,
           child: SingleChildScrollView(
             child: Column(
              
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Padding(padding: EdgeInsets.all(5)),
                const SizedBox(
                  height: 10,
                ),
                const SizedBox(
                  height: 10,
                ),
                Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRGqywZTFXI2kMnSyaW-LHOwie3AsOwjOe4uA&s",height: 300,width: 300,),              
                const SizedBox(
                  height: 10,
                ),
                Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRGqywZTFXI2kMnSyaW-LHOwie3AsOwjOe4uA&s",height: 300,width: 300,),              
                const SizedBox(
                  height: 10,
                ),
                Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRGqywZTFXI2kMnSyaW-LHOwie3AsOwjOe4uA&s",height: 300,width: 300,),              
                const SizedBox(
                  height: 10,
                ),
              ]
                   ),
           ),
         )
      )
    );
  }
}