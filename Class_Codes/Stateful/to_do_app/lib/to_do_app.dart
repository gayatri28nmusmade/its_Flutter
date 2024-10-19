import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:to_do_app/todo_model.dart';



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


  List<TodoModel> todoCards=[
    TodoModel(title: "Java", 
    description: "Dart OP", 
    date: "15 oct 25"),

    TodoModel(title: "Flutter", 
    description: "widget, Stateless, Stateful", 
    date: "16 oct 25"),

    TodoModel(title: "Python", 
    description: "Inheritance , Ploymorphism", 
    date: "18 oct 25"),
  ];

  //Controllers
  TextEditingController titleController=TextEditingController();
  TextEditingController descriptionController=TextEditingController();
  TextEditingController dateController=TextEditingController(); 

  //Submit button
  submit(bool doEdit, [TodoModel? todoModel]){
    if(titleController.text.trim().isNotEmpty &&
    descriptionController.text.trim().isNotEmpty &&
    dateController.text.trim().isNotEmpty){

      if(doEdit){
        //Edit
        todoModel!.title=titleController.text;
        todoModel.description=descriptionController.text;
        todoModel.date=dateController.text;
      }
      else{
      todoCards.add(
        TodoModel(title: titleController.text,
         description: descriptionController.text, 
         date: dateController.text)
      );
    }
    }
    Navigator.of(context).pop();
    clearController();
     setState(() {
        
      });
     }


  //to clear all the controllers
  void clearController(){
    titleController.clear();
    descriptionController.clear();
    dateController.clear();
  }

//Bottom Sheet
void openBootomSheet(bool doEdit, [TodoModel? todoModel]){
    showModalBottomSheet(
      isScrollControlled: true,
      context: context, builder: (context){
      return Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
          top: 12,
          right: 12,
          left: 12
        ),
        
        child: Column(
          mainAxisSize: MainAxisSize.min,
          
          children: [            
            const SizedBox(height: 15,),
            SizedBox(
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
            const SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  
              TextField(
                controller: titleController,
                decoration: InputDecoration(
                  hintText: "Add Title",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  )
                ),
              ),
             const  SizedBox(height: 10,),
              TextField(
                controller: descriptionController,
                decoration: InputDecoration(
                  hintText: "Add Description",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  )
                ),
              ),
              const SizedBox(height: 10,),
              
              TextField(
                controller: dateController,
                decoration: InputDecoration(
                  hintText: "Select Date",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  
                  suffixIcon: const Icon(Icons.calendar_month_outlined,color: Color.fromARGB(255, 18, 130, 164),)
                ),
                onTap:  () async{
                  DateTime? pickDate=await showDatePicker(
                    context: context, 
                    firstDate: DateTime(2024), 
                    lastDate: DateTime(2025)
                    );
                    String formatedDate=DateFormat.yMMMd().
                      format(pickDate!);
                      setState(() {
                        dateController.text=formatedDate;
                      });
                }
                
              ),
            
              const SizedBox(height: 10,),
              
              GestureDetector(
                onTap: (){
                  if(doEdit==true){
                    submit(true,todoModel);
                  }
                  else{
                    submit(false);
                  }
                },                
                child: Container(
                  height: 70,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color:const Color.fromARGB(255, 20, 123, 135)
                  ),
                  child: Center(
                    child: Text("Submit",style: GoogleFonts.quicksand(
                      fontSize:18,
                      color:Colors.white
                    ),),
                  ),
                ),
              )

              // ElevatedButton(onPressed: (){
              //   if(doEdit==true){
              //     submit(true, todoModel);
              //   }else{
              //     submit(false);
              //   }
              // }, child: const Text("Submit")
              // )
             
                ],
              ),
            ),
          ],
        ),
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
          itemCount: todoCards.length,
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
                              image: DecorationImage(
                                image:AssetImage("assets/image.jpg",),
                                fit: BoxFit.cover),
                              //color: Color.fromARGB(255, 203, 121, 116),
                                shape: BoxShape.circle,
                                  )),
                        const SizedBox(width: 15,),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(todoCards[index].title,
                                  style: GoogleFonts.quicksand(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      color:const  Color.fromARGB(255, 29, 26, 26))),
                              const SizedBox(
                                height: 10,
                              ),
                              Text(
                                  todoCards[index].description,
                                  style: GoogleFonts.quicksand(
                                      fontSize: 16,
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
                        Text(todoCards[index].date,
                            style: GoogleFonts.quicksand(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color:const  Color.fromARGB(255, 96, 54, 54))),
                        const Spacer(),

                        GestureDetector(
                          onTap: (){
                            titleController.text=todoCards[index].title;
                            descriptionController.text=todoCards[index].description;
                            dateController.text=todoCards[index].date;
                            openBootomSheet(true,
                            todoCards[index],);
                            setState(() {
                              
                            });
                          },
                          child: const Icon(Icons.edit,color:  Color.fromARGB(255, 7, 145, 170),)),


                        const SizedBox(
                          width: 8,
                        ),
                        GestureDetector(
                          onTap:(){
                            todoCards.remove(todoCards[index]);
                            setState(() {
                              
                            });
                          },
                          child: const Icon(Icons.delete_outline_outlined,color:  Color.fromARGB(255, 7, 155, 182),)
                          )
                      ],
                    )
                  ],
                ),
              ),
            );
          }),

          floatingActionButton: FloatingActionButton(onPressed: (){
          openBootomSheet(false);
        
        },
        child: const Icon(Icons.add,color:  Color.fromARGB(255, 9, 181, 211),),
        )
    );
  }
}
