import 'package:flutter/material.dart';

import '../widget/main_page_tab_bar.dart';
import '../widget/main_page_title.dart';

class MainPagePhone extends StatelessWidget {
  const MainPagePhone({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const MainPageTitle(),
        bottom: const MainPageTabBar(tabAlignment: TabAlignment.center),
      ),
      body: const MainPageTabBarView(),
    );
  }
}
