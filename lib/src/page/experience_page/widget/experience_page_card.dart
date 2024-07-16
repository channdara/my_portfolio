import 'package:flutter/material.dart';

import '../../../../main_data.dart';
import '../experience_page_data.dart';

class ExperiencePageCard extends StatelessWidget {
  const ExperiencePageCard({
    super.key,
    required this.experience,
    this.primary = false,
  });

  final Experience experience;
  final bool primary;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: borderRadius,
        border: primary ? Border.all(color: accentColor) : null,
      ),
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          children: [
            Text(
              experience.date,
              style: const TextStyle(color: Colors.white),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16.0),
            Text(
              experience.title,
              style: const TextStyle(fontSize: 18.0, color: accentColor),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 4.0),
            Text(
              experience.subtitle,
              style: const TextStyle(color: Colors.grey),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16.0),
            Text(
              experience.description,
              style: const TextStyle(color: Colors.white),
              textAlign: TextAlign.start,
            ),
          ],
        ),
      ),
    );
  }
}
