import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';

class VideoWidget extends StatelessWidget {
  const VideoWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: 200,
          child: Image.network(
            "https://www.themoviedb.org/t/p/original/se86cWSwdSftjJH8OStW7Yu3ZPC.jpg",
            fit: BoxFit.cover,
          ),
        ),
        Positioned(
          right: 10,
          bottom: 10,
          child: CircleAvatar(
              radius: 22,
              backgroundColor: backgroundColor.withOpacity(0.9),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.volume_up),
                iconSize: 25,
              )),
        ),
      ],
    );
  }
}
