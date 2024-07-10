import 'package:flutter/material.dart';

import '../../../../main_data.dart';

class HomePageGreeting extends StatelessWidget {
  const HomePageGreeting({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Greeting!',
          style: TextStyle(
            color: extraColor,
            fontSize: 18.0,
          ),
        ),
        SizedBox(height: 32.0),
        Text(
          "I'm EAM Channdara",
          style: TextStyle(
            color: Colors.white,
            fontSize: 26.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8.0),
        Text(
          'A Senior Mobile Application Developer with over 4 years of hands-on expertise in both Native Android and Hybrid Flutter application development.',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 16.0,
          ),
        ),
      ],
    );
  }
}
