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
                padding: EdgeInsets.only(left: 20.0),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)),
                width: MediaQuery.of(context).size.width,
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "Search Products",
                      hintStyle: AppWidget.lightTextFieldStyle(),
                      suffixIcon:Icon(Icons.search, color:Colors.black),
                      ),
                )
                )
          ],
        ),
      ),
    );
  }
}
