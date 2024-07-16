import 'package:flutter/material.dart';

import '../../../../main_data.dart';
import '../widget/home_page_avatar.dart';
import '../widget/home_page_greeting.dart';

class HomePagePhone extends StatelessWidget {
  const HomePagePhone({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      padding: EdgeInsets.all(phoneSpacing),
      child: Column(
        children: [
          HomePageAvatar(
            margin: EdgeInsets.zero,
            imageSizeFactor: 3,
          ),
          SizedBox(height: phoneSpacing),
          HomePageGreeting(),
        ],
      ),
    );
  }
}
