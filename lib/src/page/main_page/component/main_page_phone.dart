import 'package:flutter/material.dart';

import '../../../../main_data.dart';
import '../widget/main_page_tab_bar.dart';
import '../widget/main_page_title.dart';

class MainPagePhone extends StatelessWidget {
  const MainPagePhone({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: tabInitialIndex,
      length: tabLength,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const MainPageTitle(),
          bottom: const MainPageTabBar(tabAlignment: TabAlignment.center),
        ),
        body: const MainPageTabBarView(),
      ),
    );
  }
}
