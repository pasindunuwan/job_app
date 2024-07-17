import 'package:flutter/material.dart';

class titleText extends StatelessWidget {
  const titleText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          "Good Morning Alexa",
          textAlign: TextAlign.left,
          style: TextStyle(fontSize: 13, color: Colors.blueGrey),
        ),
      ],
    );
  }
}
