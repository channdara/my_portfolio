import 'package:flutter/material.dart';

import '../widget/home_page_avatar.dart';
import '../widget/home_page_greeting.dart';

class HomePageWebsite extends StatelessWidget {
  const HomePageWebsite({super.key, required this.spacing});

  final double spacing;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: spacing),
            child: const HomePageGreeting(),
          ),
        ),
        HomePageAvatar(
          margin: EdgeInsets.only(right: spacing),
          imageSizeFactor: 4,
        ),
      ],
    );
  }
}
