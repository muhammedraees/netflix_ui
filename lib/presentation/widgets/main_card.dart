import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

import '../../../core/constants.dart';


class MainCard extends StatelessWidget {
  const MainCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(4),
      width: 130,
      height: 250,
      // color: Colors.red,
      decoration: BoxDecoration(
        borderRadius: kRadius10,
        image:const DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(
              "https://www.themoviedb.org/t/p/w220_and_h330_face/v55tfjL3QGeabkXAMXPb4olwjL0.jpg"),
        ),
      ),
    );
  }
}
