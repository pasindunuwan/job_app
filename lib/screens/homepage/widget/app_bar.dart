import 'package:flutter/material.dart';

class Custom_app_bar extends StatelessWidget {
  const Custom_app_bar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Container(
          width: 50,
          height: 50,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.all(Radius.circular(5)),
            border: Border.all(color: Colors.grey.shade300),
          ),
          child: const Icon(Icons.menu)),
      const Text(
        "Creative Jobs",
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
      ),
      Container(
        height: 50,
        width: 50,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          color: Colors.black,
          image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                  "https://images.ctfassets.net/h6goo9gw1hh6/2sNZtFAWOdP1lmQ33VwRN3/24e953b920a9cd0ff2e1d587742a2472/1-intro-photo-final.jpg?w=1200&h=992&fl=progressive&q=70&fm=jpg")),
        ),
      )
    ]);
  }
}
