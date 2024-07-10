import 'package:flutter/material.dart';

import '../widget/about_page_avatar.dart';
import '../widget/about_page_description.dart';

class AboutPageWebsite extends StatelessWidget {
  const AboutPageWebsite({super.key, required this.spacing});

  final double spacing;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AboutPageAvatar(
          margin: EdgeInsets.only(left: spacing),
          imageSizeFactor: 4,
        ),
        Expanded(
          child: SingleChildScrollView(
            padding: EdgeInsets.symmetric(
              horizontal: spacing,
              vertical: spacing / 2,
            ),
            child: const AboutPageDescription(),
          ),
        ),
      ],
    );
  }
}
