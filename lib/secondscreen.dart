import 'package:flutter/material.dart';
import 'package:pizza_store_app/Database.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color.fromARGB(255, 210, 208, 208),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 25,
                  backgroundImage: AssetImage("assets/images/avathar2.jpeg"),
                ),
                SizedBox(width: 100),
                Text(
                  "Delivery to",
                  style: TextStyle(
                    color: const Color.fromARGB(255, 37, 37, 37),
                  ),
                ),
                SizedBox(height: 30),
                Spacer(),
                Icon(Icons.menu, size: 20, color: Colors.black),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(Icons.location_pin, color: Colors.orange),
                Text(
                  "Mc Knney,Taxos",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 10,
                  ),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hungry?",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w100,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "We Got You Served!",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w100,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                hintText: "search",
                icon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),

            SizedBox(
              height: 80,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: Database.Pizzadetails.length,
                itemBuilder: (context, index) {
                  return Container(
                    height: 100,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Database.Pizzadetails[index]["container_color"],
                      image: DecorationImage(
                        image: AssetImage(
                          Database.Pizzadetails[index]["image"],
                        ),
                      ),
                      
                    ),
                    child: Database.Pizzadetails[index]["name"],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
