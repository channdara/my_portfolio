import 'package:flutter/material.dart';

import '../../../../main_data.dart';
import '../../about_page/about_page.dart';
import '../../contact_page/contact_page.dart';
import '../../experience_page/experience_page.dart';
import '../../home_page/home_page.dart';

class MainPageTabBar extends StatelessWidget implements PreferredSizeWidget {
  const MainPageTabBar({super.key, this.tabAlignment});

  final TabAlignment? tabAlignment;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return TabBar(
      labelColor: Colors.white,
      unselectedLabelColor: Colors.grey,
      isScrollable: true,
      dividerHeight: 0.0,
      indicatorColor: accentColor,
      splashBorderRadius: borderRadius,
      tabAlignment: tabAlignment,
      tabs: const [
        Tab(text: 'Home'),
        Tab(text: 'About Me'),
        Tab(text: 'Experience'),
        Tab(text: 'Projects'),
        Tab(text: 'Contact'),
      ],
    );
  }
}

class MainPageTabBarView extends StatelessWidget {
  const MainPageTabBarView({super.key});

  @override
  Widget build(BuildContext context) {
    return const TabBarView(
      physics: NeverScrollableScrollPhysics(),
      children: [
        HomePage(),
        AboutPage(),
        ExperiencePage(),
        SizedBox(),
        ContactPage(),
      ],
    );
  }
}
