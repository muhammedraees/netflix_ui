import 'package:flutter/material.dart';
import 'package:text_sample/presentation/downloads/screen_downloads.dart';
import 'package:text_sample/presentation/new_and_hot/screen_new_and_hot.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';

import '../../../core/colors/colors.dart';
import '../fast_laugh/screen_fast_laugh.dart';
import '../home/screen_home.dart';
import '../search/search_screen.dart';
import 'widgets/bottom_nav.dart';

class ScreenMainPage extends StatelessWidget {
   ScreenMainPage({super.key});

  final _pages = [ 
    ScreenHome(),
    ScreenNewAndHot(),
    ScreenFastLaugh(),
    ScreenSearch(),
    ScreenDownloads()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: ValueListenableBuilder(valueListenable: indexChangeNotifier, builder: (context,int index, _) {
          return _pages[index];
        },),
      ),
      bottomNavigationBar: BottomNavigationWidget(),
    );
  }
}
