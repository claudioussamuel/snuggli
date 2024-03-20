import 'package:Snuggli/view/colours.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AngryCard extends StatelessWidget {
  const AngryCard({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    double screenHeight = screenSize.height;

    return SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: screenHeight * 0.1,
          ),
          Padding(
            padding: const EdgeInsets.all(
              15,
            ),
            child: Image.asset(
              "assets/mood/angry.png",
            ),
          ),
          Text(
            "Uplift your soul, prioritise your mental well-being",
            style: GoogleFonts.nunito(
              color: textColor,
              fontWeight: FontWeight.w900,
              fontSize: 32,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
