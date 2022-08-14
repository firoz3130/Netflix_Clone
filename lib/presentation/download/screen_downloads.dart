import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix_clone/application/Downloads/downloads_bloc.dart';
import 'package:netflix_clone/core/colors/colors.dart';
import 'package:netflix_clone/core/colors/sized_constants.dart';
import 'package:netflix_clone/core/colors/strings.dart';
import 'package:netflix_clone/presentation/widgets/app_bar_widget.dart';

class ScreenDownloads extends StatelessWidget {
  ScreenDownloads({Key? key}) : super(key: key);
  final _widgetList = [const _SmartDownloads(), Section2(), const Section3()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: AppBarWidget(title: "  Downloads")),
        body: ListView.separated(
            padding: const EdgeInsets.all(10),
            itemBuilder: (ctx, index) => _widgetList[index],
            separatorBuilder: (context, index) => const SizedBox(
                  height: 25,
                ),
            itemCount: _widgetList.length));
  }
}

class Section2 extends StatelessWidget {
  Section2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance!.addPostFrameCallback((_) {
      return BlocProvider.of<DownloadsBloc>(context)
          .add(const DownloadsEvent.getDownloadsImage());
    });

    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        const Text(
          "Introducing Downloads for you",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: kwhite, fontSize: 25, fontWeight: FontWeight.bold),
        ),
        kheight,
        const Text(
          "We will download a personalised selection of movies and shows for you, so there is always something to watch on your device",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.grey, fontSize: 15),
        ),
        BlocBuilder<DownloadsBloc, DownloadsState>(
          builder: (context, state) {
            return SizedBox(
              width: size.width,
              height: size.width,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.grey.withOpacity(0.5),
                    radius: size.width * 0.4,
                  ),
                  DownloadsImageWidget(
                    imageList:
                        '$imageAppendUrl${state.downloads[0].posterPath}',
                    margin: const EdgeInsets.only(left: 100),
                    angle: 20,
                    size: Size(size.width * 0.50, size.width * 0.60),
                  ),
                  DownloadsImageWidget(
                      imageList:
                          '$imageAppendUrl${state.downloads[1].posterPath}',
                      margin: const EdgeInsets.only(right: 100),
                      angle: -20,
                      size: Size(size.width * 0.50, size.width * 0.60)),
                  DownloadsImageWidget(
                      imageList:
                          '$imageAppendUrl${state.downloads[2].posterPath}',
                      margin: const EdgeInsets.only(bottom: 20),
                      size: Size(size.width * 0.60, size.width * 0.70))
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}

class Section3 extends StatelessWidget {
  const Section3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: MaterialButton(
              color: Colors.blue.shade800,
              onPressed: () {},
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(6)),
              child: const Padding(
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  "Set up",
                  style: TextStyle(
                      color: kwhite, fontSize: 20, fontWeight: FontWeight.bold),
                ),
              )),
        ),
        kheight,
        MaterialButton(
            color: kwhite,
            onPressed: () {},
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                "See what you can download",
                style: TextStyle(
                    color: backgroundColor,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            )),
      ],
    );
  }
}

class _SmartDownloads extends StatelessWidget {
  const _SmartDownloads({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Icon(
          Icons.settings,
          color: kwhite,
        ),
        kwidth,
        Text(
          "Smart Downloads",
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}

class DownloadsImageWidget extends StatelessWidget {
  const DownloadsImageWidget({
    Key? key,
    required this.imageList,
    this.angle = 0,
    required this.margin,
    required this.size,
  }) : super(key: key);

  final String imageList;
  final double angle;
  final EdgeInsets margin;
  final Size size;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: Transform.rotate(
        angle: angle * pi / 180,
        child: Container(
          margin: margin,
          width: size.width,
          height: size.width,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(image: NetworkImage(imageList))),
        ),
      ),
    );
  }
}
