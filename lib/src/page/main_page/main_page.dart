import 'package:flutter/material.dart';

import '../../common/app_common_data.dart';
import 'widget/main_page_app_bar.dart';
import 'widget/main_page_tab_bar.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: tabLength,
      initialIndex: tabInitialIndex,
      child: LayoutBuilder(
        builder: (context, constraints) {
          final isPhone = constraints.constrainWidth() < 600;
          return Scaffold(
            appBar: MainPageAppBar(isPhone: isPhone),
            body: const MainPageTabBarView(),
          );
        },
      ),
    );
  }
}
