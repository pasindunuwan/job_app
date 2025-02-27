import 'package:flutter/material.dart';

class categary_bar extends StatelessWidget {
  const categary_bar({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
        ),
        const Text(
          "Show All",
          style: TextStyle(fontSize: 15),
        )
      ],
    );
  }
}
