import 'package:Snuggli/view/common_widget/button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../colours.dart';

class RecommendedCommunities extends StatefulWidget {
  const RecommendedCommunities({super.key});

  @override
  State<RecommendedCommunities> createState() => _RecommendedCommunitiesState();
}

class _RecommendedCommunitiesState extends State<RecommendedCommunities> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    double screenWidth = screenSize.width;
    double screenHeight = screenSize.height;

    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomAppBar(
          child: Button(
            screenHeight: screenHeight,
            screenWidth: screenWidth,
            textName: "Continue",
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    const Icon(Icons.arrow_back_ios_new),
                    Expanded(child: Container()),
                    Text(
                      "Skip",
                      style: GoogleFonts.nunito(
                        color: primaryColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                Text(
                  "Recommended",
                  style: GoogleFonts.nunito(
                    color: textColor,
                    fontWeight: FontWeight.w900,
                    fontSize: 32,
                  ),
                  textAlign: TextAlign.center,
                ),
                Text(
                  "These are communities and users we think you will like.",
                  style: GoogleFonts.nunito(
                    color: textColor,
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Communities",
                  style: GoogleFonts.nunito(
                    color: textColor,
                    fontWeight: FontWeight.w900,
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 5,
                ),

                // ===== Delete this if we ListView
                Container(
                  height: 100,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.person_2_outlined,
                        size: 50,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Anxiety & Panic",
                            style: GoogleFonts.nunito(
                              color: textColor,
                              fontWeight: FontWeight.w900,
                              fontSize: 15,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "100 members",
                            style: GoogleFonts.nunito(
                              color: textColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Lorem ipsum dolor sit....",
                            style: GoogleFonts.nunito(
                              color: textColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                      Expanded(child: Container()),
                      Button(
                        screenHeight: 500,
                        screenWidth: 150,
                        textName: "Join now",
                      ),
                      SizedBox(
                        width: 5,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 100,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.person_2_outlined,
                        size: 50,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Anxiety & Panic",
                            style: GoogleFonts.nunito(
                              color: textColor,
                              fontWeight: FontWeight.w900,
                              fontSize: 15,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "100 members",
                            style: GoogleFonts.nunito(
                              color: textColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Lorem ipsum dolor sit....",
                            style: GoogleFonts.nunito(
                              color: textColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                      Expanded(child: Container()),
                      Button(
                        screenHeight: 500,
                        screenWidth: 150,
                        textName: "Join now",
                      ),
                      SizedBox(
                        width: 5,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 100,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.person_2_outlined,
                        size: 50,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Anxiety & Panic",
                            style: GoogleFonts.nunito(
                              color: textColor,
                              fontWeight: FontWeight.w900,
                              fontSize: 15,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "100 members",
                            style: GoogleFonts.nunito(
                              color: textColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Lorem ipsum dolor sit....",
                            style: GoogleFonts.nunito(
                              color: textColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                      Expanded(child: Container()),
                      Button(
                        screenHeight: 500,
                        screenWidth: 150,
                        textName: "Join now",
                      ),
                      SizedBox(
                        width: 5,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 100,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.person_2_outlined,
                        size: 50,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Anxiety & Panic",
                            style: GoogleFonts.nunito(
                              color: textColor,
                              fontWeight: FontWeight.w900,
                              fontSize: 15,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "100 members",
                            style: GoogleFonts.nunito(
                              color: textColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Lorem ipsum dolor sit....",
                            style: GoogleFonts.nunito(
                              color: textColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                      Expanded(child: Container()),
                      Button(
                        screenHeight: 500,
                        screenWidth: 150,
                        textName: "Join now",
                      ),
                      SizedBox(
                        width: 5,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),

                Container(
                  height: 100,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(
                      10,
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.person_2_outlined,
                        size: 50,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Anxiety & Panic",
                            style: GoogleFonts.nunito(
                              color: textColor,
                              fontWeight: FontWeight.w900,
                              fontSize: 15,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "100 members",
                            style: GoogleFonts.nunito(
                              color: textColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "Lorem ipsum dolor sit....",
                            style: GoogleFonts.nunito(
                              color: textColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 15,
                            ),
                          ),
                        ],
                      ),
                      Expanded(child: Container()),
                      Button(
                        screenHeight: 500,
                        screenWidth: 150,
                        textName: "Join now",
                      ),
                      SizedBox(
                        width: 5,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
