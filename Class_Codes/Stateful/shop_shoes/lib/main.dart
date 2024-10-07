import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const ShopApp());
}

class ShopApp extends StatefulWidget {
  const ShopApp({super.key});

  @override
  State<ShopApp> createState() => _ShopAppState();
}

class _ShopAppState extends State<ShopApp> {
  int count=1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Shoes",
            style: TextStyle(
                fontSize: 30,
                color: Color.fromARGB(255, 95, 37, 211),
                fontWeight: FontWeight.w500),
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.shopping_cart),
              tooltip: 'Open shopping cart',
              onPressed: () {
                // handle the press
              },
            ),
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.network("https://up.yimg.com/ib/th?id=OIP.YguOkIP2xIjpoReX_q0R4gHaHa&pid=Api&rs=1&c=1&qlt=95&w=124&h=124",
                fit: BoxFit.cover,
                height: 180,
                width: 270,
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(20.0),
              child: Text(
                "Nike Air Force 1 07",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                          Color.fromARGB(255, 71, 58, 176))),
                  child: const Text(
                    "Shoes",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                          Color.fromARGB(255, 71, 58, 176))),
                  child: const Text(
                    "FootWare",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.all(10.0),
              child: Text(
                "With iconic style and legendary comfort, the AF -1 was made to be worn on repeat. This iterations pusts fresh spin on the hoopsclassic with crisp leather, erachoing '80s construction and refelctive -design Swoosh logos",
                style: TextStyle(
                    fontSize: 13, color: Color.fromARGB(255, 69, 67, 67)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  const Text(
                    "Quality",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      
                      setState(() {
                        if(count<=0){
                          count;
                        }else{
                        count--;
                        }
                      print("$count");
                      });
                    },
                    child: const Text(
                      "-",
                      style:
                          TextStyle(fontSize: 40, fontWeight: FontWeight.w500),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    height: 35,
                    width: 35,
                    decoration: BoxDecoration(
                      border:
                          Border.all(color: const Color.fromARGB(255, 74, 67, 67)),
                      borderRadius: BorderRadius.circular(5),
                      shape: BoxShape.rectangle,
                    ),
                    child: Center(
                      child: Text(
                        "$count",
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                 GestureDetector(
                  child: const Icon(Icons.add),                  
                  onTap: (){
                    count++;
                    setState(() {                      
                    });
                    print("$count");
                  },
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: const Color.fromARGB(255, 71, 58, 176),
                ),
                child: const Center(
                  child: Text(
                    "Purchase",
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
