import 'package:flutter/material.dart';

class DescriptionPage extends StatelessWidget {
  final String image;
  final String name;
  final String price;

  DescriptionPage({super.key,required this.image,required this.name,required this .price});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(Icons.arrow_back, size: 25, color: Colors.black),
                  ),
                ),
                SizedBox(width: 100),
                Text(
                  "Details",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
                Spacer(),
                CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(Icons.favorite, color: Colors.red, size: 25),
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(image),
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 10,
                  width: 20,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                Container(
                  height: 10,
                  width: 25,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
                Container(
                  height: 10,
                  width: 20,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ],
            ),
            SizedBox(height: 25),

            Row(
              children: [
                Text(
                  name,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                Text(
                  price,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Icon(
                  Icons.star,
                  color: const Color.fromARGB(255, 234, 213, 23),
                  size: 25,
                ),
                Text(
                  "4.5(250 kacl)",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            SizedBox(height: 25),
            Row(
              children: [
                Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    color: Colors.lightGreen,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                    child: Text(
                      "Energy\n450kcal",
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    ),
                  ),
                ),
                SizedBox(width: 15),
                Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 207, 215, 127),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                    child: Text(
                      "fats\n44gm",
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    ),
                  ),
                ),
                SizedBox(width: 15),
                Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 232, 170, 99),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                    child: Text(
                      "protein\n15gm",
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    ),
                  ),
                ),
                SizedBox(width: 15),
                Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 126, 223, 202),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                    child: Text(
                      "carb\n30gm",
                      style: TextStyle(color: Colors.black, fontSize: 15),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            Row(
              children: [
                Text(
                  "Description",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Text(
              "Chicken pizza is a delicious combination of pizza crust topped with sauce, cheese, and various prepration of chichen, along with a medely of complementary vegetables and seasoning ",
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 50),
            Row(
              children: [
                CircleAvatar(
                  backgroundColor: const Color.fromARGB(255, 210, 207, 207),
                  radius: 25,
                  child: Center(
                    child: Text(
                      "-",
                      style: TextStyle(color: Colors.black, fontSize: 30),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                CircleAvatar(
                  backgroundColor: const Color.fromARGB(255, 0, 0, 0),
                  radius: 25,
                  child: Center(
                    child: Text(
                      "+",
                      style: TextStyle(
                        color: const Color.fromARGB(255, 255, 246, 246),
                        fontSize: 22,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  height: 45,
                  width: 250,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.orange,
                  ),
                  child: Center(
                    child: Text(
                      "Add to Cart",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
