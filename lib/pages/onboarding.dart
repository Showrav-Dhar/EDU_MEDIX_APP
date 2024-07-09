import 'package:flutter/material.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffecefe8),
      body: Container(
          margin: EdgeInsets.only(top: 50.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset("images/EDU_MEDIX.jpg"),
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Text(
                  "Daily Meidcal\nNeeds at your\nDoorstep",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 40.00,
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          )),
    );
  }
}
