import 'package:Snuggli/view/screens/MoodSelectionScreen/Moods.dart';
import 'package:flutter/material.dart';

class MoodSelection extends StatelessWidget {
  const MoodSelection({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: const [
          Moods(
              imagePath: "assets/mood/joy.png",
              textTittle: "Happy",
              text: "Awesome! Someone is in a good mood today!."),
          Moods(
              imagePath: "assets/mood/chill.png",
              textTittle: "Chill",
              text:
                  "That sounds lovely! It's always great to take some time to relax and recharge."),
          Moods(
              imagePath: "assets/mood/cool.png",
              textTittle: "Cool",
              text: "That’s great!Keep staying as cool as the wind!."),
          Moods(
              imagePath: "assets/mood/confused.png",
              textTittle: "Confused",
              text:
                  "Well that’s a bummer! You are not alone, we’re all here for you."),
          Moods(
              imagePath: "assets/mood/sad.png",
              textTittle: "Sad",
              text:
                  "So sorry about this! Your feelings are legit, but be of good cheer."),
          Moods(
              imagePath: "assets/mood/angry.png",
              textTittle: "Angry",
              text:
                  "Take it easy! Vent on Snuggli, we support you, not judge you.")
        ],
      ),
    );
  }
}
