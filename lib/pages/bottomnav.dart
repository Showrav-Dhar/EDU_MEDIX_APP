import 'package:edu_medix_app/pages/home.dart';
import 'package:edu_medix_app/pages/order.dart';
import 'package:edu_medix_app/pages/profile.dart';
import 'package:flutter/material.dart';

class Bottomnav extends StatefulWidget {
  const Bottomnav({super.key});

  @override
  State<Bottomnav> createState() => _BottomnavState();
}

class _BottomnavState extends State<Bottomnav> {
  // home, order, profile
  late List<Widget> pages; // here will be the three pages of the app, might add BMI calculator page here

  late Home HomePage;
  late Order order;
  late Profile profile;

  int currentTabIndex = 0;

  @override
  void initState() {// 
    HomePage = Home();
    order = Order();
    profile = Profile();
    pages = [HomePage,order,profile];// the order should be maintained

    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: CurvedNavigationBar,
    );
  }
}