import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({
    super.key,
    required this.screenHeight,
    required this.screenWidth,
    required this.textName,
  });

  final double screenHeight;
  final double screenWidth;
  final String textName;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight * 0.07,
      width: screenWidth * 0.8,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xffFEA527),
            Color(0xffFE2157),
          ], // Replace with your gradient colors
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius:
            BorderRadius.circular(25), // Optional: Add rounded corners
      ),
      child: MaterialButton(
        //==== for buying from paystack =====
        onPressed: () async {},

        // color: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(29),
        ),
        child: Text(
          textName.toUpperCase(),
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
