import 'package:flutter/material.dart';

import '../../../../main_data.dart';
import '../experience_page_data.dart';

class ExperiencePageCardPhone extends StatelessWidget {
  const ExperiencePageCardPhone({
    super.key,
    required this.experience,
    this.primary = false,
  });

  final Experience experience;
  final bool primary;

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: borderRadiusNormal,
        border: primary ? Border.all(color: accentColor) : null,
      ),
      child: Padding(
        padding: const EdgeInsets.all(phoneSpacing),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              experience.date,
              style: const TextStyle(color: Colors.white),
            ),
            const SizedBox(height: 16.0),
            Text(
              experience.title,
              style: const TextStyle(fontSize: 18.0, color: accentColor),
            ),
            Text(
              experience.subtitle,
              style: const TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 16.0),
            Text(
              experience.description,
              style: const TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
