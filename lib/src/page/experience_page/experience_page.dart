import 'package:flutter/material.dart';

import '../../common/app_common_data.dart';
import '../../model/experience.dart';
import '../../widget/page_builder_widget.dart';
import '../../widget/phone_body_widget.dart';
import '../../widget/website_body_widget.dart';
import 'widget/experience_page_card.dart';
import 'widget/experience_page_card_phone.dart';
import 'widget/experience_page_header.dart';

class ExperiencePage extends StatefulWidget {
  const ExperiencePage({super.key});

  @override
  State<ExperiencePage> createState() => _ExperiencePageState();
}

class _ExperiencePageState extends State<ExperiencePage> {
  @override
  Widget build(BuildContext context) {
    return PageBuilderWidget(
      phone: PhoneBodyWidget(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const ExperiencePageHeader(
              crossAxisAlignment: CrossAxisAlignment.start,
            ),
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
      ),
      website: WebsiteBodyWidget(
        child: Column(
          children: [
            const ExperiencePageHeader(textAlign: TextAlign.center),
            const SizedBox(height: phoneSpacing),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: ExperiencePageCard(
                    experience: Experience.mangoByte(),
                  ),
                ),
                const SizedBox(width: phoneSpacing),
                Expanded(
                  child: ExperiencePageCard(
                    experience: Experience.wonderpass(),
                    primary: true,
                  ),
                ),
                const SizedBox(width: phoneSpacing),
                Expanded(
                  child: ExperiencePageCard(
                    experience: Experience.freelancer(),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
