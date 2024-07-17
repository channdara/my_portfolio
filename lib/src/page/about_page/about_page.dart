import 'package:flutter/material.dart';

import '../../common/app_common_data.dart';
import '../../widget/page_builder_widget.dart';
import '../../widget/phone_body_widget.dart';
import '../../widget/website_body_widget.dart';
import 'widget/about_page_avatar.dart';
import 'widget/about_page_description.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({super.key});

  @override
  State<AboutPage> createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  @override
  Widget build(BuildContext context) {
    return const PageBuilderWidget(
      phone: PhoneBodyWidget(
        child: Column(
          children: [
            AboutPageAvatar(
              imageSizeFactor: 3,
              margin: EdgeInsets.only(bottom: phoneSpacing),
            ),
            AboutPageDescription(),
          ],
        ),
      ),
      website: WebsiteBodyWidget(
        verticalPadding: websiteSpacing,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AboutPageAvatar(
              imageSizeFactor: 4,
              margin: EdgeInsets.only(right: websiteSpacing),
            ),
            Expanded(child: AboutPageDescription()),
          ],
        ),
      ),
    );
  }
}
