import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';

const imageurl =
    "https://www.themoviedb.org/t/p/original/pdAczaX9Fh6ln0xuLC5sFvJtnUU.jpg";

class VideoListItem extends StatelessWidget {
  final int index;
  const VideoListItem({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          color: Colors.accents[index % Colors.accents.length],
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                //left side of fast laughs page
                CircleAvatar(
                    radius: 25,
                    backgroundColor: backgroundColor.withOpacity(0.9),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.volume_up),
                      iconSize: 30,
                    )),
                //right side of fast laughs
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(imageurl),
                      ),
                    ),
                    VideoActions(
                      title: 'LOL',
                      icon: Icons.emoji_emotions,
                    ),
                    VideoActions(
                      title: 'My list',
                      icon: Icons.add,
                    ),
                    VideoActions(
                      title: 'Share',
                      icon: Icons.share,
                    ),
                    VideoActions(
                      title: 'Play',
                      icon: Icons.play_arrow,
                    )
                  ],
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}

class VideoActions extends StatelessWidget {
  const VideoActions({Key? key, required this.title, required this.icon})
      : super(key: key);
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Column(
        children: [
          Icon(
            icon,
            color: Colors.white,
            size: 30,
          ),
          Text(
            title,
            style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}
