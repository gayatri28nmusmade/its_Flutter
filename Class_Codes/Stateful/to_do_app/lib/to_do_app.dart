import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class TodoApp extends StatefulWidget {
  const TodoApp({super.key});

  @override
  State<TodoApp> createState() => _ToDoAppState();
}

class _ToDoAppState extends State<TodoApp> {
  var ColorsCard = [
    const Color.fromARGB(255, 250, 232, 232),
    const Color.fromARGB(255, 232, 237, 250),
    const Color.fromARGB(255, 250, 249, 232),
    const Color.fromARGB(255, 250, 232, 250)
  ];

  
  void openBootomSheet(){
    showModalBottomSheet(context: context, builder: (context){
      return Column(
        children: [            
          //const SizedBox(height: 15,),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 40,
            child: const Center(
              child: Text("Bottomsheet Demo",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w600
              ),
              ),
            ),
            
          ),
          SizedBox(height: 5,),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                
            TextField(
              decoration: InputDecoration(
                hintText: "Title",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                )
              ),
            ),
           const  SizedBox(height: 10,),
            TextField(
              decoration: InputDecoration(
                hintText: "Information",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                )
              ),
            ),
            const SizedBox(height: 10,),
            
            TextField(
              decoration: InputDecoration(
                hintText: "Date",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                )
              ),
            ),
            const SizedBox(height: 10,),
            
            
            TextField(
              decoration: InputDecoration(
                hintText: "Image",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(5),
                )
              ),
            ),
              ],
            ),
          ),
        ],
      );
    }
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            "To-do list",
            style: GoogleFonts.quicksand(
                fontSize: 26, fontWeight: FontWeight.w700, color: Colors.white),
          ),
          backgroundColor:const  Color.fromARGB(255, 5, 128, 135)),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (BuildContext context, index) {
            return Card(
              color: ColorsCard[index%ColorsCard.length],
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Container(
                            height: 52,
                            width: 52,
                            decoration:const BoxDecoration(
                              color: Color.fromARGB(255, 203, 121, 116),
                                shape: BoxShape.circle,
                                  )),
                        const SizedBox(width: 15,),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Lorem Ipsum is Simple settin industry.",
                                  style: GoogleFonts.quicksand(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w600,
                                      color:const  Color.fromARGB(255, 29, 26, 26))),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                  "Simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s",
                                  style: GoogleFonts.quicksand(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color:const  Color.fromARGB(255, 29, 15, 15))),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        Text("10 July 2023",
                            style: GoogleFonts.quicksand(
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                                color:const  Color.fromARGB(255, 96, 54, 54))),
                        const Spacer(),
                        const Icon(Icons.edit),
                        const SizedBox(
                          width: 8,
                        ),
                        const Icon(Icons.delete_outline_outlined)
                      ],
                    )
                  ],
                ),
              ),
            );
          }),

          floatingActionButton: FloatingActionButton(onPressed: (){
          openBootomSheet();
        },
        child: const Icon(Icons.add),
        )
    );
  }
}
