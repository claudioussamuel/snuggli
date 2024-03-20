import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../colours.dart';
import '../../common_widget/button.dart';

class OnSuccess extends StatelessWidget {
  const OnSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    double screenWidth = screenSize.width;
    double screenHeight = screenSize.height;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            //  const Icon(Icons.arrow_back_ios_new),
            SizedBox(
              height: 20,
            ),
            Text(
              "Success",
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
              padding: const EdgeInsets.all(
                15,
              ),
              child: Image.asset(
                "assets/forgot_password/suc.png",
              ),
            ),
            Text(
              "A link has been sent to the email address used during account creation to reset password.",
              style: GoogleFonts.nunito(
                color: textColor,
                fontWeight: FontWeight.w400,
                fontSize: 18,
              ),
              // textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(child: Container()),
            Container(
              alignment: const Alignment(0, 0),
              child: Button(
                screenHeight: screenHeight,
                screenWidth: screenWidth,
                textName: "Login",
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
