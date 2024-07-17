import 'package:flutter/material.dart';

class searchbar extends StatelessWidget {
  const searchbar({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: size.width * 0.75,
          child: TextField(
            decoration: InputDecoration(
                border: UnderlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(15)),
                hintText: "Search For Jobs",
                fillColor: Colors.white,
                filled: true),
          ),
        ),
        const SizedBox(
          width: 15,
        ),
        Container(
          width: 45,
          height: 45,
          decoration: BoxDecoration(
              color: Colors.black, borderRadius: BorderRadius.circular(12)),
          child: const Icon(
            Icons.search_rounded,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
