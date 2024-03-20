import 'package:Snuggli/view/colours.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../common_widget/button.dart';
import '../../common_widget/custom_textfield.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();
    var screenSize = MediaQuery.of(context).size;
    double screenWidth = screenSize.width;
    double screenHeight = screenSize.height;

    return SafeArea(
      child: Scaffold(
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
                "Welcome back",
                style: GoogleFonts.nunito(
                  color: textColor,
                  fontWeight: FontWeight.w900,
                  fontSize: 32,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 5,
              ),

              Text(
                "Log in to your account",
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

              // School email
              CustomTextField(
                controller: controller,
                hintText: "Email address",
                icon: Icon(
                  Icons.check_circle,
                  color: iconColor,
                  size: 20,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              // Password
              CustomTextField(
                controller: controller,
                hintText: "Password",
                icon: Icon(
                  Icons.check_circle,
                  color: iconColor,
                  size: 20,
                ),
              ),

              SizedBox(
                height: 10,
              ),

              RichText(
                text: TextSpan(
                  style: GoogleFonts.nunito(),
                  children: const [
                    TextSpan(
                      text: "Forgot password? ",
                      style: TextStyle(
                        color: primaryColor,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(child: Container()),

              Container(
                alignment: const Alignment(0, 0),
                child: Button(
                    screenHeight: screenHeight,
                    screenWidth: screenWidth,
                    textName: "Log in"),
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
