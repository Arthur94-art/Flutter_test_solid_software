import 'package:flutter/material.dart';
import 'package:stroke_text/stroke_text.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: StrokeText(
        text: "Hey there",
        textStyle: TextStyle(
          fontSize: 30,
          letterSpacing: 2,
          shadows: <Shadow>[
            Shadow(
              offset: Offset(2.0, 2.0),
              blurRadius: 10.0,
              color: Color.fromARGB(255, 59, 98, 112),
            ),
            Shadow(
              offset: Offset(2.0, 2.0),
              blurRadius: 10.0,
              color: Color.fromARGB(0, 49, 76, 81),
            ),
          ],
        ),
        strokeColor: Colors.blueGrey,
        strokeWidth: 2,
      ),
    );
  }
}
