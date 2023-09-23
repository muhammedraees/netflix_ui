import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:text_sample/core/colors/colors.dart';

import '../../../core/constants.dart';

class NumberCard extends StatelessWidget {
  const NumberCard({required this.index, super.key});
  final int index;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            const SizedBox(
              width: 40,
              height: 200,
            ),
            Container(
              margin:const EdgeInsets.symmetric(horizontal:10),
              width: 130,
              height: 200,
              decoration: BoxDecoration(
                borderRadius: kRadius10,
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://www.themoviedb.org/t/p/w220_and_h330_face/y1oFNynXrIzlPUe4CXKMR2dpNep.jpg"),
                ),
              ),
            ),
          ],
        ),
        Positioned(
            left: 13,
            bottom: -30,
            child: BorderedText(
              strokeWidth: 10.0,
              strokeColor: kWhiteColor,
              child: Text(
                "${index+1}",
                style:const TextStyle(
                    fontSize: 140,
                    color: kBlackColor,
                    decoration: TextDecoration.none,
                    decorationColor: Colors.black),
              ),
            ))
      ],
    );
  }
}