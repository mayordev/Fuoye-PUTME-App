import 'package:flutter/material.dart';

import 'onBoardingScreen1.dart';
import 'onBoardingScreen2.dart';

class PageViews extends StatelessWidget {
  final PageController _pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: <Widget>[OnBoardingSCreen1(), OnBoardingSCreen2()],
      ),
    );
  }
}
