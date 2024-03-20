import 'package:Snuggli/view/colours.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../common_widget/button.dart';
import '../../common_widget/custom_textfield.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    var screenSize = MediaQuery.of(context).size;
    double screenWidth = screenSize.width;
    double screenHeight = screenSize.height;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            const Icon(Icons.arrow_back_ios_new),
            SizedBox(
              height: 20,
            ),
            Text(
              "Forgot Password",
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
            Text(
              "Enter your email address to reset password",
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

            // Full Name
            CustomTextField(
              controller: controller,
              hintText: "Email Address",
              icon: Icon(
                Icons.check_circle,
                color: iconColor,
                size: 20,
              ),
            ),
            Expanded(child: Container()),

            Container(
              alignment: const Alignment(0, 0),
              child: Button(
                  screenHeight: screenHeight,
                  screenWidth: screenWidth,
                  textName: "Reset password"),
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
