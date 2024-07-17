import 'package:flutter/material.dart';

import '../../../common/app_common_data.dart';
import 'main_page_tab_bar.dart';
import 'main_page_title.dart';

class MainPageAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MainPageAppBar({super.key, required this.isPhone});

  final bool isPhone;

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight * 2);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: primaryColor,
      margin: EdgeInsets.zero,
      shape: const RoundedRectangleBorder(),
      child: isPhone
          ? Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: kToolbarHeight,
                  alignment: Alignment.center,
                  child: const MainPageTitle(),
                ),
                const MainPageTabBar(tabAlignment: TabAlignment.center),
              ],
            )
          : const Row(
              children: [
                Expanded(child: SizedBox()),
                Expanded(
                  flex: 8,
                  child: Row(
                    children: [
                      Expanded(child: MainPageTitle()),
                      MainPageTabBar(tabAlignment: TabAlignment.start),
                    ],
                  ),
                ),
                Expanded(child: SizedBox()),
              ],
            ),
    );
  }
}
