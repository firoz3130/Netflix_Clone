import 'package:flutter/material.dart';
import 'package:netflix_clone/core/colors/sized_constants.dart';
import 'package:netflix_clone/presentation/home/widgets/custom_button_widget.dart';
import 'package:netflix_clone/presentation/widgets/video_widget.dart';

class ComingSoonWidget extends StatelessWidget {
  const ComingSoonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        SizedBox(
          width: 50,
          height: 440,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Text("APR", style: TextStyle(fontSize: 18, color: Colors.grey)),
              Text(
                "2",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
        SizedBox(
          width: size.width - 50,
          height: 444,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const VideoWidget(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(//comment down whenever required okk
                    "PEAKY BLINDERS",
                    style: TextStyle(
                        fontSize: 26,
                        letterSpacing: -5,
                        fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      Column(
                        children: const [
                          CustomButtonWidget(
                              iconSize: 20,
                              textSize: 14,
                              icon: Icons.notifications,
                              text: "Remind me")
                        ],
                      )
                    ],
                  ),
                  kwidth,
                  Row(
                    children: [
                      Column(
                        children: const [
                          CustomButtonWidget(
                              iconSize: 20,
                              textSize: 14,
                              icon: Icons.info,
                              text: "Info")
                        ],
                      )
                    ],
                  ),
                ],
              ),
              const Text("Coming on Friday",
                  style: TextStyle(fontSize: 16, color: Colors.grey)),
              kheight,
              const Text(
                "Peaky blinders",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              kheight,
              const Text(
                  "Tommy Shelby, a dangerous man, leads the Peaky Blinders, a gang based in Birmingham. Soon, Chester Campbell, an inspector, decides to nab him and put an end to the criminal activities",
                  style: TextStyle(
                      fontSize: 17,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold))
            ],
          ),
        ),
      ],
    );
  }
}
