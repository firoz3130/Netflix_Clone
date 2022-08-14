import 'package:flutter/material.dart';

class MainCard extends StatelessWidget {
  const MainCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 250,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: const DecorationImage(
          image: NetworkImage(
              "https://www.themoviedb.org/t/p/original/nUHk72rSGDuG2Lz22zJAYCyxq7g.jpg"),
        ),
      ),
    );
  }
}
