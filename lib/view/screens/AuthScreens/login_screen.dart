import 'package:Snuggli/view/colours.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../common_widget/button.dart';
import '../../common_widget/custom_textfield.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                "Get Started",
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
                "Fill the form below to create your account",
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
                hintText: "Fullname",
                icon: Icon(
                  Icons.check_circle,
                  color: iconColor,
                  size: 20,
                ),
              ),
              SizedBox(
                height: 10,
              ),

              // User Name
              CustomTextField(
                controller: controller,
                hintText: "Username",
                icon: Icon(
                  Icons.check_circle,
                  color: iconColor,
                  size: 20,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              // School email
              CustomTextField(
                controller: controller,
                hintText: "School email address",
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
              // Confirm Password
              CustomTextField(
                controller: controller,
                hintText: "Confirm password",
                icon: Icon(
                  Icons.check_circle,
                  color: iconColor,
                  size: 20,
                ),
              ),

              SizedBox(
                height: screenHeight * 0.01,
              ),

              RichText(
                text: TextSpan(
                  style: GoogleFonts.nunito(),
                  children: const [
                    TextSpan(
                      text: "By continuing, you agree to our  ",
                      style: TextStyle(
                        color: textColor,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: "Terms of Service ",
                      style: TextStyle(
                        color: primaryColor,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: "and ",
                      style: TextStyle(
                        color: textColor,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: "Privacy Policy.",
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
                    textName: "Continue"),
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
