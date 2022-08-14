import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/colors/sized_constants.dart';
import 'package:netflix_clone/presentation/search/widgets/title.dart';

const imageUrl =
    'https://www.themoviedb.org/t/p/original/pdAczaX9Fh6ln0xuLC5sFvJtnUU.jpg';

class SearchIdle extends StatelessWidget {
  const SearchIdle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTextTitle(title: "Top Searches"),
        kheight,
        Expanded(
          child: ListView.separated(
              shrinkWrap: true,
              itemBuilder: (ctx, index) => const TopSearchItem(),
              separatorBuilder: (ctx, index) => kheight20,
              itemCount: 10),
        ),
      ],
    );
  }
}

class TopSearchItem extends StatelessWidget {
  const TopSearchItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Container(
          width: screenWidth * 0.35,
          height: 150,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover, image: NetworkImage(imageUrl))),
        ),
        kwidth,
        const Expanded(
          child: Text(
            "Mayanadi",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        const CircleAvatar(
          backgroundColor: kwhite,
          radius: 27,
          child: CircleAvatar(
            backgroundColor: Colors.black,
            radius: 25,
            child: Icon(
              CupertinoIcons.play_arrow_solid,
              color: kwhite,
            ),
          ),
        )
      ],
    );
  }
}
