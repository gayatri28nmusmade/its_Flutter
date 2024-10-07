import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const secondScreen());
}

class secondScreen extends StatefulWidget {
  const secondScreen({super.key});

  @override
  State<secondScreen> createState() => _secondScreenState();
}

class _secondScreenState extends State<secondScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "My cart",
            style: TextStyle(
                fontSize: 30,
                color: Color.fromARGB(255, 103, 9, 218),
                fontWeight: FontWeight.w600),
          ),
          centerTitle: true,
          leading: const Icon(
            Icons.arrow_back_ios_new,
            color: Color.fromARGB(255, 103, 9, 218),
          ),
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Card(
                child: Row(
                  children: [
                    Container(
                      height: 150,
                      width: 150,
                      child: Image.network(
                          "data:image/jpeg;base64,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"),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Nike Shoes",
                          style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        ),
                        const Text("With conic style  comfort, on repeat."),
                        Row(
                          children: [
                            const Text(
                              " 570.00",
                              style: TextStyle(
                                  fontSize: 26,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black),
                            ),
                            const SizedBox(
                              width: 130,
                            ),
                            const Text(
                              "-",
                              style: TextStyle(
                                  fontSize: 40, fontWeight: FontWeight.w500),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 35,
                              width: 35,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color:
                                        const Color.fromARGB(255, 74, 67, 67)),
                                borderRadius: BorderRadius.circular(5),
                                shape: BoxShape.rectangle,
                              ),
                              child: const Center(
                                child: Text(
                                  "1",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Icon(Icons.add),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Card(
                child: Row(
                  children: [
                    SizedBox(
                      height: 150,
                      width: 150,
                      child: Image.network(
                          "data:image/jpeg;base64,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"),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Nike Shoes",
                          style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.w600,
                              color: Colors.black),
                        ),
                        const Text("With conic style  comfort, on repeat."),
                        Row(
                          children: [
                            const Text(
                              " 570.00",
                              style: TextStyle(
                                  fontSize: 26,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black),
                            ),
                            const SizedBox(
                              width: 130,
                            ),
                            const Text(
                              "-",
                              style: TextStyle(
                                  fontSize: 40, fontWeight: FontWeight.w500),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Container(
                              height: 35,
                              width: 35,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color:
                                        const Color.fromARGB(255, 74, 67, 67)),
                                borderRadius: BorderRadius.circular(5),
                                shape: BoxShape.rectangle,
                              ),
                              child: const Center(
                                child: Text(
                                  "1",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Icon(Icons.add),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Subtotal :",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                      Text(
                        " 800.00",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w900,
                            color: Colors.black),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Delivery Fees :",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                      Text(
                        " 5.00",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w900,
                            color: Colors.black),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Discount :",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Colors.black),
                      ),
                      Text(
                        " 40%",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w900,
                            color: Colors.black),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 67, 33, 192),
                      borderRadius: BorderRadius.circular(40),
                    ),
                    child: const Center(
                      child: Text(
                        "Checkout for 480.00",
                        style: TextStyle(fontSize: 15, color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
