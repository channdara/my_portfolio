import 'package:flutter/material.dart';

import '../../../../main_data.dart';

class AboutPageDescription extends StatelessWidget {
  const AboutPageDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: 'About',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 26.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextSpan(
                text: ' Me',
                style: TextStyle(
                  color: extraColor,
                  fontSize: 26.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        Text(
          '\nExperienced mobile developer with over 4 years of hands-on expertise in both Native Android and Hybrid Flutter application development. Proficient in Java and Kotlin for Android, with a strong understanding of Android SDK, architecture patterns (MVVM, MVP), and best practices. Skilled in building responsive and user-friendly interfaces, integrating RESTful APIs, and optimizing app performance.\n\nExpertise extends to Hybrid app development using Flutter and Dart, adept at creating cross-platform applications that maintain native performance and user experience. Experienced in widget customization, state management, and platform-specific integrations.\n\nProven ability to work collaboratively in agile teams, communicate effectively with stakeholders, and deliver high-quality applications on schedule. Demonstrated problem-solving skills and a passion for staying updated with the latest mobile technologies and trends.',
          style: TextStyle(fontSize: 16.0, color: Colors.white),
        ),
      ],
    );
  }
}