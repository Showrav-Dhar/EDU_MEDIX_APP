import 'package:edu_medix_app/widget/support_widget.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: const EdgeInsets.only(top: 50.0, left: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    margin: EdgeInsets.only(left: 20.0),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      border: Border.all(),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: const Icon(Icons.arrow_back_ios_new_outlined),
                  ),
                ),
                Center(
                  child: Image.asset(
                    "images/Oxymeter.jpeg",
                    height: 400,
                  ),
                ),
              ],
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Oxymeter",
                          style: AppWidget.boldTextFieldStyle(),
                        ),
                        Text(
                          "\$300",
                          style: TextStyle(
                            color: Color.fromARGB(255, 224, 53, 110),
                            fontSize: 23.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20.0,),
                    Text(
                      "Details",
                      style: AppWidget.semiboldTextFieldStyle(),
                    ),
                    SizedBox(height: 10.0,),
                    Text("An oximeter is a medical device used to measure blood oxygen saturation (SpO2) and pulse rate. It's commonly clipped onto a finger, providing quick, non-invasive readings for monitoring respiratory health."),
                    SizedBox(height: 90.0,),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 10.0),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 224, 53, 110), borderRadius: BorderRadius.circular(10)
                      ),
                      width: MediaQuery.of(context).size.width,
                      child: Center(child: Text("Buy Now", style: TextStyle(color: Colors.white,fontSize: 20.0,fontWeight: FontWeight.bold),)),
                    )

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
