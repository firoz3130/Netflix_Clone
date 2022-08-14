import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:netflix_clone/core/colors/sized_constants.dart';
import 'package:netflix_clone/presentation/home/widgets/background_card.dart';
import 'package:netflix_clone/presentation/home/widgets/number_card.dart';
import 'package:netflix_clone/presentation/widgets/main_title.dart';
import 'package:netflix_clone/presentation/widgets/main_title_card.dart';

ValueNotifier<bool> scrollNotifier = ValueNotifier(true);

class ScreenHome extends StatelessWidget {
  const ScreenHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ValueListenableBuilder(
            valueListenable: scrollNotifier,
            builder: (BuildContext context, index, _) {
              return NotificationListener<UserScrollNotification>(
                onNotification: (notification) {
                  final ScrollDirection direction = notification.direction;
                  if (direction == ScrollDirection.reverse) {
                    scrollNotifier.value = false;
                  } else if (direction == ScrollDirection.forward) {
                    scrollNotifier.value = true;
                  }
                  return true;
                },
                child: Stack(
                  children: [
                    ListView(
                      children: [
                        const BackgroundCard(),
                        const MainTitleCard(title: 'Released in Past Year'),
                        kheight,
                        const MainTitleCard(title: 'Trending Now'),
                        kheight,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const MainTitle(
                                title: 'Top 10 TV Trends in India Today'),
                            kheight,
                            LimitedBox(
                              maxHeight: 200,
                              child: ListView(
                                scrollDirection: Axis.horizontal,
                                children: List.generate(10, (index) {
                                  return NumberCard(
                                    index: index,
                                  );
                                }),
                              ),
                            )
                          ],
                        ),
                        kheight,
                        const MainTitleCard(title: 'Tense Dramas'),
                        kheight,
                        const MainTitleCard(title: 'South Indian Cinema'),
                      ],
                    ),
                    scrollNotifier.value
                        ? AnimatedContainer(
                            duration: const Duration(milliseconds: 100),
                            width: double.infinity,
                            height: 90,
                            color: Colors.black.withOpacity(0.3),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Image.network(
                                      "https://cdn.vox-cdn.com/thumbor/AwKSiDyDnwy_qoVdLPyoRPUPo00=/39x0:3111x2048/1400x1400/filters:focal(39x0:3111x2048):format(png)/cdn.vox-cdn.com/uploads/chorus_image/image/49901753/netflixlogo.0.0.png",
                                      width: 50,
                                      height: 50,
                                    ),
                                    const Spacer(),
                                    const Icon(
                                      Icons.cast,
                                      color: Colors.white,
                                      size: 30,
                                    ),
                                    kwidth,
                                    Container(
                                      width: 30,
                                      height: 30,
                                      color: Colors.blueGrey,
                                    ),
                                    kwidth
                                  ],
                                ),
                                kheight,
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Text(
                                      "TV Shows",
                                      style: khometitletext,
                                    ),
                                    Text(
                                      "Movies",
                                      style: khometitletext,
                                    ),
                                    Text(
                                      "Categories",
                                      style: khometitletext,
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        : kheight
                  ],
                ),
              );
            }));
  }
}
