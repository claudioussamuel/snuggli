import 'package:Snuggli/view/common_widget/button.dart';
import 'package:Snuggli/view/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Moods extends StatelessWidget {
  final String imagePath;
  final String textTittle;
  final String text;
  const Moods(
      {super.key,
      required this.imagePath,
      required this.textTittle,
      required this.text});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    double screenWidth = screenSize.width;
    double screenHeight = screenSize.height;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(child: Container()),
        Image.asset(
          imagePath,
          fit: BoxFit.fill,
        ),
        Text(
          textTittle,
          style: GoogleFonts.nunito(
            color: textColor,
            fontWeight: FontWeight.w900,
            fontSize: 32,
          ),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          // Use Padding to add space below the text
          padding: const EdgeInsets.all(8.0),
          child: Text(
            text,
            style: GoogleFonts.nunito(
              color: textColor,
              fontWeight: FontWeight.w400,
              fontSize: 18,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        Expanded(child: Container()),
        Button(
            screenHeight: screenHeight,
            screenWidth: screenWidth,
            textName: "Next"),
        SizedBox(
          height: 10,
        )
      ],
    );
  }
}
