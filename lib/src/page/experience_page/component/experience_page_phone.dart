import 'package:flutter/material.dart';

import '../../../../main_data.dart';
import '../experience_page_data.dart';
import '../widget/experience_page_card_phone.dart';
import '../widget/experience_page_subtitle.dart';
import '../widget/experience_page_title.dart';

class ExperiencePagePhone extends StatelessWidget {
  const ExperiencePagePhone({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(phoneSpacing),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const ExperiencePageTitle(),
          const SizedBox(height: 8.0),
          const ExperiencePageSubtitle(),
          const SizedBox(height: phoneSpacing),
          ExperiencePageCardPhone(
            experience: Experience.wonderpass(),
            primary: true,
          ),
          const SizedBox(height: phoneSpacing),
          ExperiencePageCardPhone(
            experience: Experience.mangoByte(),
          ),
          const SizedBox(height: phoneSpacing),
          ExperiencePageCardPhone(
            experience: Experience.freelancer(),
          ),
        ],
      ),
    );
  }
}
