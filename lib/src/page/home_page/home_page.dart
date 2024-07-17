import 'package:flutter/material.dart';

import '../../common/app_common_data.dart';
import '../../widget/page_builder_widget.dart';
import '../../widget/phone_body_widget.dart';
import '../../widget/website_body_widget.dart';
import 'widget/home_page_avatar.dart';
import 'widget/home_page_greeting.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const PageBuilderWidget(
      phone: PhoneBodyWidget(
        child: Column(
          children: [
            HomePageAvatar(
              imageSizeFactor: 3,
              margin: EdgeInsets.only(bottom: phoneSpacing),
            ),
            HomePageGreeting(),
          ],
        ),
      ),
      website: WebsiteBodyWidget(
        verticalPadding: websiteSpacing,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(child: HomePageGreeting()),
            HomePageAvatar(
              imageSizeFactor: 4,
              margin: EdgeInsets.only(left: websiteSpacing),
            ),
          ],
        ),
      ),
    );
  }
}
