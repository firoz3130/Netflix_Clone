import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:bordered_text/bordered_text.dart';

class NumberCard extends StatelessWidget {
  const NumberCard({Key? key, required this.index})
      : super(
          key: key,
        );
  final int index;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            const SizedBox(
              width: 40,
              height: 200,
            ),
            Container(
              width: 130,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://www.themoviedb.org/t/p/original/w3MKmd4KTf5dkJDo3WAhV4K73RN.jpg"),
                ),
              ),
            ),
          ],
        ),
        Positioned(
          left: 10,
          bottom: -15,
          child: BorderedText(
            strokeColor: kwhite,
            strokeWidth: 10.0,
            child: Text(
              "${index + 1}",
              style: const TextStyle(
                  color: backgroundColor,
                  fontSize: 130,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none,
                  decorationColor: Colors.black),
            ),
          ),
        )
      ],
    );
  }
}
