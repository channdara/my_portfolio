import 'package:flutter/material.dart';

import '../../../../main_data.dart';

class MainPageTitle extends StatelessWidget {
  const MainPageTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: 'EAM',
            style: TextStyle(color: extraColor),
          ),
          TextSpan(text: ' Channdara'),
        ],
      ),
    );
  }
}
