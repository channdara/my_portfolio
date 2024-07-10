import 'package:flutter/material.dart';

import '../widget/main_page_tab_bar.dart';
import '../widget/main_page_title.dart';

class MainPageWebsite extends StatelessWidget {
  const MainPageWebsite({super.key, required this.spacing});

  final double spacing;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: spacing,
        leading: const SizedBox(),
        title: const MainPageTitle(),
        actions: [
          const MainPageTabBar(),
          SizedBox(width: spacing),
        ],
      ),
      body: const MainPageTabBarView(),
    );
  }
}
