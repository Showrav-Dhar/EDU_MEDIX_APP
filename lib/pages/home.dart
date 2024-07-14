import 'package:edu_medix_app/widget/support_widget.dart';
import 'package:flutter/material.dart';
import 'dart:math';

import 'package:flutter/widgets.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String timeGreeting = "";

  @override
  void initState() {
    super.initState();
    print("initState called"); // Debug print
    _updateTimeGreeting();
  }

  void _updateTimeGreeting() {
    var hour = DateTime.now().hour;
    // print("Current hour: $hour"); // Debug print
    setState(() {
      if (hour < 12) {
        timeGreeting = "Good morning";
      } else if (hour < 17) {
        timeGreeting = "Good afternoon";
      } else {
        timeGreeting = "Good evening";
      }
      // print("Time greeting updated: $timeGreeting"); // Debug print
    });
  }

  List catagories = [
    "images/catagory/medicine.png",
    "images/catagory/Oinment.png",
    "images/catagory/Beverages.png",
    "images/catagory/Toiletries.png",
    "images/catagory/Medical_Equipment.png",
  ];

  List<Map<String, String>> categories = [
    {"image": "images/catagory/medicine.png", "name": "Medicines"},
    {"image": "images/catagory/Oinment.png", "name": "Oinment"},
    {"image": "images/catagory/Beverages.png", "name": "Beverages"},
    {"image": "images/catagory/Toiletries.png", "name": "Toiletries"},
    {
      "image": "images/catagory/Medical_Equipment.png",
      "name": "Medical Equipment"
    },
    // Add more categories as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(244, 255, 255, 255),
      body: Container(
        margin: EdgeInsets.only(top: 70.0, left: 20.0, right: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hey, Showrav!",
                      style: AppWidget.boldTextFieldStyle(),
                    ),
                    // Text(
                    //   "Medication alert: Take now",
                    //   style: AppWidget.lightTextFieldStyle(),
                    // ),
                    Text(
                      timeGreeting.isEmpty
                          ? "Greeting placeholder"
                          : timeGreeting,
                      style: AppWidget.lightTextFieldStyle() ??
                          TextStyle(fontSize: 14, color: Colors.black),
                    ),
                    // Text(
                    //     "Debug: Current hour: ${DateTime.now().hour}, timeGreeting: $timeGreeting"), // Add this line for debugging
                  ],
                ),
                ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      "images/user_image.png",
                      height: 80,
                      width: 80,
                      fit: BoxFit.cover,
                    ))
              ],
            ),
            SizedBox(
              height: 30.0,
            ),
            Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                width: MediaQuery.of(context).size.width,
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Search Products",
                    hintStyle: AppWidget.lightTextFieldStyle(),
                    prefixIcon: Icon(Icons.search, color: Colors.black),
                  ),
                )),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Catagories", style: AppWidget.semiboldTextFieldStyle()),
                Text(
                  "View All",
                  style: TextStyle(
                      color: Color.fromARGB(255, 224, 53, 110),
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              children: [
                Container( // All button
                  height: 100,
                  margin: EdgeInsets.only(right: 5),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 224, 53, 110),
                    borderRadius: BorderRadius.circular(10),
                    
                  ),
                  // height: 90,
                  width: 50,
                  // child: Image.asset(
                  //   image,
                  //   fit: BoxFit.contain, // Ensure the image fits
                  // ),
                  child: Center(
                      child: Text(
                    "All",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold),
                  )),
                ),
                Expanded(
                  child: Container(
                    height: 100,
                    child: ListView.builder(
                      padding: EdgeInsets.zero,
                      itemCount: catagories.length,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        print("Building category tile for index $index");
                        return CatagoryTile(
                          image: categories[index]['image']!,
                          name: categories[index]['name']!,
                        );
                      },
                    ),
                  ),
                ),
              ],
            ) // show the catagory of products
          ],
        ),
      ),
    );
  }
}

class CatagoryTile extends StatelessWidget {
  final String image;
  final String name;

  CatagoryTile({required this.image, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 172, 205, 237),
        borderRadius: BorderRadius.circular(10),
      ),
      // height: 90,
      width: 90,
      // child: Image.asset(
      //   image,
      //   fit: BoxFit.contain, // Ensure the image fits
      // ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            image,
            height: 60,
            width: 60,
            fit: BoxFit.contain,
          ),
          SizedBox(height: 5),
          Text(
            name,
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
