import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const Recommender());
}

class Recommender extends StatefulWidget {
  const Recommender({super.key});

  @override
  State<Recommender> createState() => _RecommenderState();
}

class _RecommenderState extends State<Recommender> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Recommended",
            style:
                TextStyle(fontSize: 25, 
                //color: Color.fromARGB(0, 0, 5, 10)),
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 6, 61, 106)
                ),
          ),
          centerTitle: true,
          leading: const Icon(Icons.arrow_back_ios_new),
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        
        ),
        body: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Start a new career",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 14, color: Colors.black),
              ),
              const SizedBox(
                height: 5,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      height: 30,
                      width: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: const Color.fromARGB(255, 5, 77, 136),
                      ),
                      child: const Center(
                        child: Text(
                          "Data Science",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                      height: 30,
                      width: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: const Color.fromARGB(255, 178, 197, 213),
                      ),
                      child: const Center(
                        child: Text(
                          "Machine Learning",
                          style: TextStyle(
                            fontSize: 12,
                            color: Color.fromARGB(255, 5, 77, 136),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                      height: 30,
                      width: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: const Color.fromARGB(255, 178, 197, 213),
                      ),
                      child: const Center(
                        child: Text(
                          "Apache Spam",
                          style: TextStyle(
                            fontSize: 12,
                            color: Color.fromARGB(255, 5, 77, 136),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                      height: 30,
                      width: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: const Color.fromARGB(255, 178, 197, 213),
                      ),
                      child: const Center(
                        child: Text(
                          "Big Data",
                          style: TextStyle(
                            fontSize: 12,
                            color: Color.fromARGB(255, 5, 77, 136),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: ListView(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  
                  children: [
                    Card(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                "logo.jpg",
                                height: 120,
                                width: 120,
                                fit: BoxFit.cover,                              
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Data Science ",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                                const Text(
                                  "Harvard University",
                                  style:
                                      TextStyle(color: Colors.grey, fontSize: 16),
                                ),
                                const SizedBox(
                                  height: 50,
                                  width: 250,
                                  child: Text(
                                      "Lorem ipsum dolor sit amet agen nunc dictum est penatibus nunc."),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      height: 20,
                                      width: 110,
                                      decoration: BoxDecoration(
                                          color: const Color.fromARGB(255, 178, 197, 213),
                                          borderRadius: BorderRadius.circular(3)),
                                      child: const Center(
                                        child: Text(
                                          "Data Science",
                                          style: TextStyle(
                                              color:
                                                  Color.fromARGB(255, 4, 49, 86)),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      height: 20,
                                      width: 130,
                                      decoration: BoxDecoration(
                                          color: Color.fromARGB(255, 178, 197, 213),
                                          borderRadius: BorderRadius.circular(3)),
                                      child: const Center(
                                        child: Text(
                                          "Machine Learning",
                                          style: TextStyle(
                                              color:
                                                  Color.fromARGB(255, 4, 49, 86)),
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                
                
                    Card(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                "logo.jpg",
                                height: 120,
                                width: 120,
                                fit: BoxFit.cover,                              
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "AI & ML",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                                const Text(
                                  "Harvard University",
                                  style:
                                      TextStyle(color: Colors.grey, fontSize: 16),
                                ),
                                const SizedBox(
                                  height: 50,
                                  width: 250,
                                  child: Text(
                                      "Lorem ipsum dolor sit amet agen nunc dictum est penatibus nunc."),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      height: 20,
                                      width: 110,
                                      decoration: BoxDecoration(
                                          color: const Color.fromARGB(255, 178, 197, 213),
                                          borderRadius: BorderRadius.circular(3)),
                                      child: const Center(
                                        child: Text(
                                          "Machine Learning",
                                          style: TextStyle(
                                              color:
                                                  Color.fromARGB(255, 4, 49, 86)),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      height: 20,
                                      width: 130,
                                      decoration: BoxDecoration(
                                          color: Color.fromARGB(255, 178, 197, 213),
                                          borderRadius: BorderRadius.circular(3)),
                                      child: const Center(
                                        child: Text(
                                          "Decision Tree",
                                          style: TextStyle(
                                              color:
                                                  Color.fromARGB(255, 4, 49, 86)),
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                
                    Card(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                "logo.jpg",
                                height: 120,
                                width: 120,
                                fit: BoxFit.cover,                              
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Big Data ",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                                const Text(
                                  "Harvard University",
                                  style:
                                      TextStyle(color: Colors.grey, fontSize: 16),
                                ),
                                const SizedBox(
                                  height: 50,
                                  width: 250,
                                  child: Text(
                                      "Lorem ipsum dolor sit amet agen nunc dictum est penatibus nunc."),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      height: 20,
                                      width: 110,
                                      decoration: BoxDecoration(
                                          color: const Color.fromARGB(255, 178, 197, 213),
                                          borderRadius: BorderRadius.circular(3)),
                                      child: const Center(
                                        child: Text(
                                          "Big Data",
                                          style: TextStyle(
                                              color:
                                                  Color.fromARGB(255, 4, 49, 86)),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      height: 20,
                                      width: 130,
                                      decoration: BoxDecoration(
                                          color: Color.fromARGB(255, 178, 197, 213),
                                          borderRadius: BorderRadius.circular(3)),
                                      child: const Center(
                                        child: Text(
                                          "Apache Spark",
                                          style: TextStyle(
                                              color:
                                                  Color.fromARGB(255, 4, 49, 86)),
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                
                    Card(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15),
                              child: Image.asset(
                                "logo.jpg",
                                height: 120,
                                width: 120,
                                fit: BoxFit.cover,                              
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Devops",
                                  style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w400,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                                const Text(
                                  "Harvard University",
                                  style:
                                      TextStyle(color: Colors.grey, fontSize: 16),
                                ),
                                const SizedBox(
                                  height: 50,
                                  width: 250,
                                  child: Text(
                                      "Lorem ipsum dolor sit amet agen nunc dictum est penatibus nunc."),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      height: 20,
                                      width: 110,
                                      decoration: BoxDecoration(
                                          color: const Color.fromARGB(255, 178, 197, 213),
                                          borderRadius: BorderRadius.circular(3)),
                                      child: const Center(
                                        child: Text(
                                          "Docker",
                                          style: TextStyle(
                                              color:
                                                  Color.fromARGB(255, 4, 49, 86)),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Container(
                                      height: 20,
                                      width: 130,
                                      decoration: BoxDecoration(
                                          color: Color.fromARGB(255, 178, 197, 213),
                                          borderRadius: BorderRadius.circular(3)),
                                      child: const Center(
                                        child: Text(
                                          "Kubernetics",
                                          style: TextStyle(
                                              color:
                                                  Color.fromARGB(255, 4, 49, 86)),
                                        ),
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
