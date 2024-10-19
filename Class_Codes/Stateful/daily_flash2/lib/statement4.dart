import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {

bool tapped=false;
void clicked(){
  setState(() {
    tapped=true;
  });
}


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text(
              "DailyFlash2",
              style: TextStyle(color: Colors.white),
            ),
            centerTitle: true,
            backgroundColor: Colors.black,
          ),
          body: Center(
            child: GestureDetector(
              onTap: () {
                clicked();
                // setState(() {
                //   print("clicked");
                // });
                
              },
              
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                  //borderRadius: BorderRadius.circular(25),
                  color: tapped? Colors.blue :Colors.red,
                 
                
                  borderRadius:const BorderRadius.only(
                    topLeft: Radius.circular(100),
                    //topRight: Radius.circular(50),
                    //bottomLeft: Radius.circular(50),
                    bottomRight: Radius.circular(100)
                    
                  )
                   
                ),
                child: Center(
                  child: Text(
                    tapped? "Clicked" :"Click Me",style: TextStyle(color: Colors.black,fontSize: 30),
                  ),
                ),
              ),
            ),
          ),
      )
    );
  }
}

