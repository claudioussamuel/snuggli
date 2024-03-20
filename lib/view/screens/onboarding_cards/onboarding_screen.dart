import 'package:Snuggli/view/colours.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:Snuggli/view/screens/onboarding_cards/angry_card.dart';
import 'package:Snuggli/view/screens/onboarding_cards/happy_card.dart';
import 'package:Snuggli/view/screens/onboarding_cards/sad_card.dart';

import '../../common_widget/button.dart';

class OnBoardingSreen extends StatefulWidget {
  const OnBoardingSreen({super.key});

  @override
  State<OnBoardingSreen> createState() => _OnBoardingSreenState();
}

class _OnBoardingSreenState extends State<OnBoardingSreen> {
  // Controller to keep track of which page we're on

  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    double screenWidth = screenSize.width;
    double screenHeight = screenSize.height;
    String textName = 'Create Account';
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            PageView(
              controller: _controller,
              children: const [
                AngryCard(),
                HappyCard(),
                SadCard(),
              ],
            ),
            Container(
              alignment: const Alignment(0, 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  // Dot indicators
                  SmoothPageIndicator(
                    controller: _controller,
                    count: 3,
                    effect: const WormEffect(
                        activeDotColor: Colors.black,
                        dotColor: Color.fromARGB(
                          186,
                          244,
                          244,
                          229,
                        )),
                  ),
                  SizedBox(
                    height: screenHeight * 0.04,
                  ),
                  // Create Account Button
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Button(
                        screenHeight: screenHeight,
                        screenWidth: screenWidth,
                        textName: textName),
                  ),
                  // Text Signed in
                  RichText(
                    text: TextSpan(
                      style: GoogleFonts.nunito(),
                      children: const [
                        TextSpan(
                          text: "Already a snuggler?  ",
                          style: TextStyle(
                            color: textColor,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: "Log In",
                          style: TextStyle(
                            color: primaryColor,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),
                  ),
                  // Space at the bottom
                  SizedBox(
                    height: screenHeight * 0.02,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
