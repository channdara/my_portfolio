import 'package:flutter/material.dart';

import '../experience_page_data.dart';
import '../widget/experience_page_card.dart';
import '../widget/experience_page_title.dart';

class ExperiencePageWebsite extends StatelessWidget {
  const ExperiencePageWebsite({super.key, required this.spacing});

  final double spacing;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: spacing,
        vertical: spacing / 2,
      ),
      child: Column(
        children: [
          const ExperiencePageTitle(),
          const SizedBox(height: 32.0),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: ExperiencePageCard(
                    experience: Experience.mangoByte(),
                  ),
                ),
                const SizedBox(width: 32.0),
                Expanded(
                  child: ExperiencePageCard(
                    experience: Experience.wonderpass(),
                    primary: true,
                  ),
                ),
                const SizedBox(width: 32.0),
                Expanded(
                  child: ExperiencePageCard(
                    experience: Experience.freelancer(),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
