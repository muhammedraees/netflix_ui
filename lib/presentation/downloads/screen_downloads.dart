import 'dart:math';

import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';
import 'package:text_sample/core/constants.dart';
import 'package:text_sample/presentation/widgets/app_bar_widget.dart';

import '../../core/colors/colors.dart';

class ScreenDownloads extends StatelessWidget {
  ScreenDownloads({super.key});

  final _widgetList = [
    const _SmartDownloads(),
    Section2(),
    const Section3(),
  ];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(50),
          child: AppBarWidget(
            title: 'Downloads',
          ),
        ),
        body: ListView.separated(
          padding: EdgeInsets.all(10),
            itemBuilder: (ctx,index)=>_widgetList[index],
            separatorBuilder: (ctx,index)=>SizedBox(height: 25,),
            itemCount: _widgetList.length));
  }
}

class Section2 extends StatelessWidget {
  Section2({super.key});

  final List imageList = [
    'https://www.themoviedb.org/t/p/w220_and_h330_face/vZloFAK7NmvMGKE7VkF5UHaz0I.jpg',
    'https://www.themoviedb.org/t/p/w220_and_h330_face/luhKkdD80qe62fwop6sdrXK9jUT.jpg',
    'https://www.themoviedb.org/t/p/w220_and_h330_face/2Gfjn962aaFSD6eST6QU3oLDZTo.jpg',  
  ];
 
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        const Text(
          'Introducing Downloads for You',
          textAlign: TextAlign.center,
          style: TextStyle(
              color: kWhiteColor, fontSize: 24, fontWeight: FontWeight.bold),
        ),
        kheight,
        const Text(
          "We'll download a personalised selection of\n movies and shows for you, so there's\n always something to watch on your\n device.",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.grey, fontSize: 16),
        ),
        kheight,
        SizedBox(
            width: size.width,
            height: size.height,
            // color: Colors.white,
            child: Stack(
              alignment: Alignment.center,
              children: [
                CircleAvatar(
                  radius: size.width * 0.4,
                  backgroundColor: Colors.grey.withOpacity(0.5),
                ),
                DownloadsImageWidget(
                    imageList: imageList[0],
                    margin: EdgeInsets.only(left: 170,top: 50),
                    angle: 25,
                    size: Size(size.width * 0.35, size.width * 0.55)),
                DownloadsImageWidget(
                    imageList: imageList[1],
                    margin: EdgeInsets.only(right: 170,top: 50),
                    angle: -25,
                    size: Size(size.width * 0.35, size.width * 0.55)),
                DownloadsImageWidget(
                    imageList: imageList[2],
                    radius: 8,
                    margin: EdgeInsets.only(bottom: 35,top: 50),
                    size: Size(size.width * 0.4, size.width * 0.6)),
              ],
            )),
      ],
    );
  }
}

class Section3 extends StatelessWidget {
  const Section3({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          child: MaterialButton(
            color: kButtonColorBlue,
            onPressed: () {},
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            child: const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                'Set Up',
                style: TextStyle(
                    color: kButtonColorWhite,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ),
        kheight,
        MaterialButton(
          color: kButtonColorWhite,
          onPressed: () {},
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              'See What You Can Download',
              style: TextStyle(
                  color: kBlackColor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
        )
      ],
    );
  }
}

class _SmartDownloads extends StatelessWidget {
  const _SmartDownloads({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Icon(
          Icons.settings,
          color: kWhiteColor,
        ),
        Text('Smart Downloads')
      ],
    );
  }
}

class DownloadsImageWidget extends StatelessWidget {
  const DownloadsImageWidget(
      {super.key,
      required this.size,
      this.radius = 10,
      required this.imageList,
      required this.margin,
      this.angle = 0});

  final Size size;
  final double radius;
  final String imageList;
  final EdgeInsets margin;
  final double angle;

  @override
  Widget build(BuildContext context) {
    // final Size size = MediaQuery.of(context).size;
    return Padding(
      padding: margin,
      child: Transform.rotate(
        angle: angle * pi / 180,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(radius),
          child: Container(
            // margin: margin,
            width: size.width,
            height: size.height,
            // color: kBlackColor,
            decoration: BoxDecoration(
                // borderRadius: BorderRadius.circular(radius),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      imageList,
                    ))),
          ),
        ),
      ),
    );
  }
}
