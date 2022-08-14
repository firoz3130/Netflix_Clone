import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/colors/sized_constants.dart';
import 'package:netflix_clone/presentation/new_and_hot/widgets/coming_soon_widget.dart';
import 'package:netflix_clone/presentation/new_and_hot/widgets/everyones_watching_widget.dart';

class ScreenHotAndNew extends StatelessWidget {
  const ScreenHotAndNew({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(90),
            child: AppBar(
              title: const Text(
                'New & Hot',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              actions: [
                const Icon(
                  Icons.cast,
                  color: Colors.white,
                  size: 30,
                ),
                kwidth,
                Container(
                  width: 30,
                  height: 30,
                  color: Colors.blue,
                ),
                kwidth
              ],
              bottom: TabBar(
                  unselectedLabelColor: kwhite,
                  isScrollable: true,
                  labelColor: backgroundColor,
                  labelStyle: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.bold),
                  indicator: BoxDecoration(
                      color: kwhite, borderRadius: BorderRadius.circular(30)),
                  tabs: const [
                    Tab(
                      text: "🍿 Coming Soon",
                    ),
                    Tab(
                      text: "👀 Everyone's Watching",
                    )
                  ]),
            )),
        body: TabBarView(
          children: [
            _buildComingSoon(),
            _buildEveryonesWatching(),
          ],
        ),
      ),
    );
  }
}

Widget _buildComingSoon() {
  return ListView.builder(
      itemCount: 18,
      itemBuilder: (BuildContext context, index) => const ComingSoonWidget());
}

Widget _buildEveryonesWatching() {
  return ListView.builder(
      itemCount: 18,
      itemBuilder: (BuildContext context, index) => const EveryOnesWatching());
}
