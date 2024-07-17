import 'package:flutter/material.dart';

import '../../../common/app_common_data.dart';
import '../../../common/app_text_style.dart';

class HomePageGreeting extends StatelessWidget {
  const HomePageGreeting({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Greeting!',
          style: AppTextStyle.s18Accent,
        ),
        SizedBox(height: phoneSpacing),
        Text(
          "I'm EAM Channdara",
          style: AppTextStyle.s22Bold,
        ),
        SizedBox(height: 8.0),
        Text(
          'A Senior Mobile Application Developer with over 4 years of hands-on expertise in both Native Android and Hybrid Flutter application development.',
          style: AppTextStyle.s16Grey,
        ),
      ],
    );
  }
}
