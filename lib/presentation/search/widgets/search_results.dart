import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/sized_constants.dart';
import 'package:netflix_clone/presentation/search/widgets/title.dart';

const imageUrl =
    'https://www.themoviedb.org/t/p/original/w3MKmd4KTf5dkJDo3WAhV4K73RN.jpg';

class SearchResults extends StatelessWidget {
  const SearchResults({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SearchTextTitle(title: 'Movies & TV'),
        kheight,
        Expanded(
            child: GridView.count(
          shrinkWrap: true,
          crossAxisSpacing: 3,
          crossAxisCount: 3,
          childAspectRatio: 1 / 1.4,
          children: List.generate(20, (index) {
            return const MainCard();
          }),
        ))
      ],
    );
  }
}

class MainCard extends StatelessWidget {
  const MainCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          image: const DecorationImage(
            image: NetworkImage(imageUrl),
          ),
          borderRadius: BorderRadius.circular(10)),
    );
  }
}
