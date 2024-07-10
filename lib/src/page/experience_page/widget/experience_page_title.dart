import 'package:flutter/material.dart';

import '../../../../main_data.dart';

class ExperiencePageTitle extends StatelessWidget {
  const ExperiencePageTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: 'My',
            style: TextStyle(
              color: extraColor,
              fontSize: 26.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextSpan(
            text: ' Experience',
            style: TextStyle(
              color: Colors.white,
              fontSize: 26.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
