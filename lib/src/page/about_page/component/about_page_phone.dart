import 'package:flutter/material.dart';

import '../../../../main_data.dart';
import '../widget/about_page_avatar.dart';
import '../widget/about_page_description.dart';

class AboutPagePhone extends StatelessWidget {
  const AboutPagePhone({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      padding: EdgeInsets.all(phoneSpacing),
      child: Column(
        children: [
          AboutPageAvatar(margin: EdgeInsets.zero, imageSizeFactor: 3),
          SizedBox(height: 32.0),
          AboutPageDescription(),
        ],
      ),
    );
  }
}
