import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/sized_constants.dart';
import 'package:netflix_clone/presentation/home/widgets/custom_button_widget.dart';
import 'package:netflix_clone/presentation/widgets/video_widget.dart';

class EveryOnesWatching extends StatelessWidget {
  const EveryOnesWatching({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        kheight20,
        const Text(
          "Doctor Strange : Multiverse",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        kheight,
        const Text(
          "Dr Stephen Strange casts a forbidden spell that opens a portal to the multiverse. However, a threat emerges that may be too big for his team to handle.",
          style: TextStyle(
              fontSize: 17, color: Colors.grey, fontWeight: FontWeight.bold),
        ),
        kheight,
        kheight,
        kheight,
        const VideoWidget(),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            CustomButtonWidget(
                iconSize: 25, textSize: 18, icon: Icons.share, text: "Share"),
            kwidth,
            CustomButtonWidget(
                iconSize: 25, textSize: 18, icon: Icons.add, text: "My List"),
            kwidth,
            CustomButtonWidget(
                iconSize: 25,
                textSize: 18,
                icon: Icons.play_arrow,
                text: "Play"),
          ],
        )
      ],
    );
  }
}
