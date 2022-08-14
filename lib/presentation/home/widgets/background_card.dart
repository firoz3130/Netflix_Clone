import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';

import 'custom_button_widget.dart';

class BackgroundCard extends StatelessWidget {
  const BackgroundCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          height: 600,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(
                  "https://www.themoviedb.org/t/p/original/nUHk72rSGDuG2Lz22zJAYCyxq7g.jpg"),
              // "https://www.themoviedb.org/t/p/original/tkWg3OZKPHywz1xprBo53wIcB5P.jpg"
            ),
          ),
        ),
        Positioned(
          left: 0,
          bottom: -5,
          right: 0,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const CustomButtonWidget(icon: Icons.add, text: "My List"),
                _playButtonIcon(),
                const CustomButtonWidget(icon: Icons.info, text: "Info")
              ],
            ),
          ),
        ),
      ],
    );
  }
}

TextButton _playButtonIcon() {
  return TextButton.icon(
      style: ButtonStyle(backgroundColor: MaterialStateProperty.all(kwhite)),
      onPressed: () {},
      icon: const Icon(
        Icons.play_arrow,
        color: backgroundColor,
      ),
      label: const Text(
        "Play",
        style: TextStyle(
            color: backgroundColor, fontSize: 20, fontWeight: FontWeight.bold),
      ));
}
